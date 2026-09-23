#requires -Version 7.0
$ErrorActionPreference = 'Stop'
$client = Join-Path $PSScriptRoot '../scripts/jules.ps1'
$expectedSource = 'sources/github/JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1'
$previousKey = $env:JULES_API_KEY
$taskPath = Join-Path ([IO.Path]::GetTempPath()) ('clicshop-jules-test-' + [guid]::NewGuid() + '.md')
$global:ClicshopJulesTestRequests = [Collections.Generic.List[object]]::new()
$global:ClicshopJulesTestScenario = 'normal'
$global:ClicshopJulesTestChecks = 0

function Assert-True($Value, [string]$Description) {
    if (-not $Value) { throw "FALLO: $Description" }
    $global:ClicshopJulesTestChecks++
}
function Assert-Fails([scriptblock]$Run, [string]$Pattern) {
    $caught = $null
    try { & $Run | Out-Null } catch { $caught = $_.Exception.Message }
    Assert-True ($caught -and $caught -match $Pattern) "Error esperado: $Pattern"
}

# Sustituye exclusivamente el transporte HTTP; no realiza solicitudes reales.
function Invoke-RestMethod {
    param($Uri, $Method, $Headers, $TimeoutSec, $MaximumRedirection, $ErrorAction, $ContentType, $Body)
    $decoded = if ($Body) { [Text.Encoding]::UTF8.GetString($Body) | ConvertFrom-Json } else { $null }
    $global:ClicshopJulesTestRequests.Add(@{ uri=$Uri; method=$Method; body=$decoded; redirects=$MaximumRedirection })
    if ($global:ClicshopJulesTestScenario -eq 'network-error') { throw 'PRIVATE_RESPONSE test-secret' }
    if ($Uri -match '/sources/') {
        return @{ name=$expectedSource; githubRepo=@{ repo='CLICSHOP-AI-OPERATING-SYSTEM-v1'; defaultBranch=@{displayName='main'}; branches=@(@{displayName='main'}) } }
    }
    if ($Method -eq 'Post') {
        if ($Uri -match '/sessions$') { return @{name='sessions/123'; state='QUEUED'} }
        return @{}
    }
    if ($Uri -match '/sessions\?') {
        if ($Uri -match 'pageToken=') {
            return @{sessions=@(@{name='sessions/456'; sourceContext=@{source=$expectedSource}})}
        }
        return @{ sessions=@(
            @{name='sessions/123'; sourceContext=@{source=$expectedSource}},
            @{name='sessions/other'; sourceContext=@{source='sources/other'}}
        ); nextPageToken='next+token' }
    }
    if ($Uri -match '/activities\?') {
        if ($global:ClicshopJulesTestScenario -eq 'repeat-token') { return @{activities=@(); nextPageToken='repeat'} }
        if ($Uri -match 'pageToken=') { return @{activities=@(@{id='a2'})} }
        return @{activities=@(@{id='a1'}); nextPageToken='next'}
    }
    return @{ name='sessions/123'; sourceContext=@{source=$(if ($global:ClicshopJulesTestScenario -eq 'wrong-repo') {'sources/other'} else {$expectedSource})}; state=$(if ($global:ClicshopJulesTestScenario -eq 'completed') {'COMPLETED'} else {'AWAITING_PLAN_APPROVAL'}) }
}

try {
    $env:JULES_API_KEY = 'test-secret'
    Set-Content -LiteralPath $taskPath -Value 'Objetivo: revisar integración. Aceptación: evidencia verificable.' -Encoding utf8
    $dry = & $client -Action Create -Title 'Prueba' -TaskFile $taskPath -DryRun | ConvertFrom-Json
    Assert-True ($global:ClicshopJulesTestRequests.Count -eq 0) 'DryRun sin red'
    Assert-True ($dry.requirePlanApproval -eq $true) 'Plan revisable por defecto'
    Assert-True ($dry.automationMode -eq 'AUTOMATION_MODE_UNSPECIFIED') 'Sin PR automatico por defecto'
    Assert-True ($dry.prompt -match 'Objetivo: revisar integración' -and $dry.prompt -match 'Contexto de desarrollo') 'Contexto y UTF-8'

    & $client -Action Create -Title 'Prueba' -TaskFile $taskPath -ExecutePlan -CreatePullRequest | Out-Null
    $post = $global:ClicshopJulesTestRequests[-1]
    Assert-True ($post.body.sourceContext.source -ceq $expectedSource) 'Repositorio correcto'
    Assert-True ($post.body.requirePlanApproval -eq $false -and $post.body.automationMode -eq 'AUTO_CREATE_PR') 'Opciones explicitas de ejecucion y PR'
    Assert-True ($post.redirects -eq 0) 'Sin redireccion con credencial'

    $count = $global:ClicshopJulesTestRequests.Count
    Assert-Fails { & $client -Action Create -Title 'Prueba' -TaskFile $taskPath -Branch 'no-existe' } 'rama solicitada'
    Assert-True ($global:ClicshopJulesTestRequests.Count -eq $count + 1) 'Rama inexistente no crea tarea'
    $listed = @(& $client -Action List)
    Assert-True ($listed.Count -eq 2 -and $listed.name -notcontains 'sessions/other') 'Todas las paginas filtradas por proyecto'
    Assert-True ($global:ClicshopJulesTestRequests[-1].uri -match 'pageToken=next%2Btoken') 'Token codificado'
    $events = @(& $client -Action Activities -SessionId 'sessions/123')
    Assert-True ($events.Count -eq 2) 'Actividades paginadas'

    & $client -Action Message -SessionId '123' -TaskFile $taskPath | Out-Null
    Assert-True ($global:ClicshopJulesTestRequests[-1].uri -match '/sessions/123:sendMessage$' -and $global:ClicshopJulesTestRequests[-1].body.prompt -match 'integración') 'Mensaje enviado con UTF-8'
    & $client -Action Approve -SessionId '123' | Out-Null
    Assert-True ($global:ClicshopJulesTestRequests[-1].uri -match '/sessions/123:approvePlan$') 'Aprobacion correcta'
    $global:ClicshopJulesTestScenario = 'completed'
    $count = $global:ClicshopJulesTestRequests.Count
    Assert-Fails { & $client -Action Approve -SessionId '123' } 'no esta esperando'
    Assert-True ($global:ClicshopJulesTestRequests.Count -eq $count + 1) 'No aprueba un plan completado'

    $global:ClicshopJulesTestScenario = 'wrong-repo'
    foreach ($actionName in @('Get','Activities','Message','Approve')) {
        $count = $global:ClicshopJulesTestRequests.Count
        Assert-Fails { & $client -Action $actionName -SessionId '123' -TaskFile $taskPath } 'no pertenece'
        Assert-True ($global:ClicshopJulesTestRequests.Count -eq $count + 1) "Bloquea $actionName en otro repositorio"
    }
    $global:ClicshopJulesTestScenario = 'repeat-token'
    Assert-Fails { & $client -Action Activities -SessionId '123' } 'Paginacion repetida'
    $count = $global:ClicshopJulesTestRequests.Count
    Assert-Fails { & $client -Action Get -SessionId '../other' } 'SessionId valido'
    Assert-True ($global:ClicshopJulesTestRequests.Count -eq $count) 'ID invalido no consulta red'
    $global:ClicshopJulesTestScenario = 'network-error'
    $caughtError = ''
    try { & $client -Action Status | Out-Null } catch { $caughtError = $_.Exception.Message }
    Assert-True ($caughtError -match 'HTTP 0' -and $caughtError -notmatch 'test-secret|PRIVATE_RESPONSE') 'Error sin secretos ni respuesta cruda'
    Write-Output "OK: $global:ClicshopJulesTestChecks comprobaciones sin red."
} finally {
    $env:JULES_API_KEY = $previousKey
    Remove-Item -LiteralPath $taskPath -Force -ErrorAction SilentlyContinue
    Remove-Variable -Name ClicshopJulesTestRequests,ClicshopJulesTestScenario,ClicshopJulesTestChecks -Scope Global -ErrorAction SilentlyContinue
}
