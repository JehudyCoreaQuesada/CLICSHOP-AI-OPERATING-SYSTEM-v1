#requires -Version 7.0
[CmdletBinding()]
param(
    [Parameter(Mandatory)][ValidateSet('Connect','Status','List','Create','Get','Activities','Message','Approve')][string]$Action,
    [string]$SessionId,
    [string]$TaskFile,
    [string]$Title,
    [string]$Branch = 'main',
    [securestring]$ApiKey,
    [switch]$ExecutePlan,
    [switch]$CreatePullRequest,
    [switch]$DryRun
)

$ErrorActionPreference = 'Stop'
$source = 'sources/github/JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1'
$baseUri = 'https://jules.googleapis.com/v1alpha/'
$credentialPath = Join-Path ([Environment]::GetFolderPath('LocalApplicationData')) 'Clicshop/Jules/api-key.xml'
$secret = $null

function Invoke-JulesApi {
    param([string]$Path, [string]$Method = 'Get', [object]$Body)
    $request = @{
        Uri = $baseUri + $Path
        Method = $Method
        Headers = @{ 'X-Goog-Api-Key' = $secret }
        TimeoutSec = 45
        MaximumRedirection = 0
        ErrorAction = 'Stop'
    }
    if ($null -ne $Body) {
        $request.ContentType = 'application/json; charset=utf-8'
        $request.Body = [Text.Encoding]::UTF8.GetBytes(($Body | ConvertTo-Json -Depth 15 -Compress))
    }
    try { Invoke-RestMethod @request }
    catch {
        $status = if ($_.Exception.Response) { [int]$_.Exception.Response.StatusCode } else { 0 }
        $detail = switch ($status) {
            401 { 'Clave no aceptada.' }
            403 { 'Acceso denegado; revisa la clave y el acceso de Jules al repositorio.' }
            404 { 'Recurso no encontrado.' }
            429 { 'Limite de solicitudes o cuota; intenta mas tarde.' }
            0 { 'No se pudo conectar. Revisa la red y los permisos de salida.' }
            default { 'La solicitud no se completo.' }
        }
        # No exponer cabeceras ni cuerpos de error que puedan contener secretos.
        throw "Jules HTTP ${status}: $detail Si era una escritura, consulta List/Get antes de repetirla."
    }
}

function Get-JulesPages {
    param([string]$Path, [string]$Field)
    $pageToken = ''
    $seenTokens = [Collections.Generic.HashSet[string]]::new()
    do {
        $query = $Path + '?pageSize=100'
        if ($pageToken) { $query += '&pageToken=' + [Uri]::EscapeDataString($pageToken) }
        $page = Invoke-JulesApi -Path $query
        foreach ($item in $page.$Field) { $item }
        $pageToken = $page.nextPageToken
        if ($pageToken -and -not $seenTokens.Add($pageToken)) { throw 'Paginacion repetida; respuesta incompleta.' }
    } while ($pageToken)
}

try {
    if ($DryRun -and $Action -ne 'Create') { throw 'DryRun solo se admite para Create.' }
    if ($Action -in @('Get','Activities','Message','Approve')) {
        if ($SessionId -notmatch '^(sessions/)?[A-Za-z0-9_-]+$') { throw 'Indica un SessionId valido.' }
        $sessionName = 'sessions/' + ($SessionId -replace '^sessions/', '')
    }
    if ($Action -in @('Create','Message')) {
        if (-not $TaskFile) { throw 'Indica TaskFile con el encargo o mensaje en UTF-8.' }
        $taskText = Get-Content -LiteralPath $TaskFile -Raw -Encoding utf8
        if ([string]::IsNullOrWhiteSpace($taskText)) { throw 'El archivo del encargo esta vacio.' }
    }
    if ($Action -eq 'Create') {
        if ([string]::IsNullOrWhiteSpace($Title)) { throw 'Indica un Title para identificar el encargo.' }
        if ([string]::IsNullOrWhiteSpace($Branch)) { throw 'Indica una rama de GitHub.' }
        $context = Get-Content -LiteralPath (Join-Path $PSScriptRoot '../docs/JULES_CONTEXT.md') -Raw -Encoding utf8
        $body = @{
            title = $Title
            prompt = "$context`n`n--- ENCARGO ---`n$taskText"
            sourceContext = @{ source = $source; githubRepoContext = @{ startingBranch = $Branch } }
            requirePlanApproval = -not $ExecutePlan.IsPresent
            automationMode = if ($CreatePullRequest) { 'AUTO_CREATE_PR' } else { 'AUTOMATION_MODE_UNSPECIFIED' }
        }
        if ($DryRun) { $body | ConvertTo-Json -Depth 15; return }
    }

    if ($Action -eq 'Connect') {
        if (-not $IsWindows) { throw 'El almacenamiento cifrado requiere Windows; en otros sistemas usa JULES_API_KEY.' }
        if (-not $ApiKey) { $ApiKey = Read-Host 'Clave de Google Jules (entrada oculta)' -AsSecureString }
        $secret = [Net.NetworkCredential]::new('', $ApiKey).Password
    } elseif ($env:JULES_API_KEY) {
        $secret = $env:JULES_API_KEY
    } elseif ($IsWindows -and (Test-Path -LiteralPath $credentialPath)) {
        try {
            $stored = Import-Clixml -LiteralPath $credentialPath
            $secret = $stored.GetNetworkCredential().Password
        } catch { throw 'No se pudo descifrar la clave. Ejecuta Connect con tu usuario de Windows.' }
    } else { throw 'Falta la credencial. Ejecuta Connect o define JULES_API_KEY en este proceso.' }
    if ([string]::IsNullOrWhiteSpace($secret)) { throw 'La clave esta vacia.' }

    if ($Action -in @('Connect','Status','Create')) {
        $projectSource = Invoke-JulesApi -Path $source
        if ($projectSource.name -cne $source) { throw 'El repositorio devuelto no coincide con Clicshop.' }
    }
    if ($Action -in @('Get','Activities','Message','Approve')) {
        $session = Invoke-JulesApi -Path $sessionName
        if ($session.sourceContext.source -cne $source) { throw 'La sesion no pertenece al repositorio Clicshop.' }
    }

    switch ($Action) {
        'Connect' {
            New-Item -ItemType Directory -Path (Split-Path $credentialPath) -Force | Out-Null
            [pscredential]::new('Jules', $ApiKey) | Export-Clixml -LiteralPath $credentialPath
            [pscustomobject]@{ connected = $true; repository = $projectSource.githubRepo.repo; credentialStorage = 'Windows DPAPI, fuera del repositorio' }
        }
        'Status' {
            [pscustomobject]@{ connected = $true; repository = $projectSource.githubRepo.repo; defaultBranch = $projectSource.githubRepo.defaultBranch.displayName }
        }
        'List' {
            Get-JulesPages -Path 'sessions' -Field 'sessions' |
                Where-Object { $_.sourceContext.source -ceq $source } |
                Select-Object name,title,state,url,createTime,updateTime
        }
        'Create' {
            $branches = @($projectSource.githubRepo.branches.displayName) + @($projectSource.githubRepo.defaultBranch.displayName)
            if ($Branch -cnotin $branches) { throw 'La rama solicitada no aparece en Jules. Publicala en GitHub o consulta las ramas disponibles.' }
            Invoke-JulesApi -Path 'sessions' -Method Post -Body $body
        }
        'Get' { $session }
        'Activities' { Get-JulesPages -Path "$sessionName/activities" -Field 'activities' }
        'Message' { Invoke-JulesApi -Path "${sessionName}:sendMessage" -Method Post -Body @{ prompt = $taskText } }
        'Approve' {
            if ($session.state -ne 'AWAITING_PLAN_APPROVAL') { throw 'La sesion no esta esperando aprobacion de un plan.' }
            Invoke-JulesApi -Path "${sessionName}:approvePlan" -Method Post -Body @{}
        }
    }
} finally {
    $secret = $null
    $ApiKey = $null
    $stored = $null
}
