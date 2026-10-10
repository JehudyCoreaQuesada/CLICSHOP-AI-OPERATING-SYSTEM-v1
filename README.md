# CLICSHOP-AI-OPERATING-SYSTEM-v1
Desarrollo Clicshop con Agentes de AI

## Reglas para agentes de código

[`AGENTS.md`](AGENTS.md) resume roles, flujo de ramas y prohibiciones. Lo leen
automáticamente OpenCode, Codex y Jules. Prevalecen el protocolo y las decisiones.

## Desarrollo con OpenCode

OpenCode trabaja en el equipo de Jehudy con modelos Claude vía API (D-006).

- Configuración del proyecto: [`opencode.json`](opencode.json) (carga el protocolo y el índice; permisos conservadores).
- Abre OpenCode dentro de `C:\dev\CLICSHOP-AI-OPERATING-SYSTEM-v1` para que tome `AGENTS.md` y `opencode.json`.
- La llave API se conecta desde OpenCode y queda en su almacén local, nunca en el repositorio.
- Trabaja en ramas `opencode/<tema>` y entrega por PR + RELEVO.

## Desarrollo con Google Jules

Jules se integra mediante su API para recibir encargos técnicos sobre este
repositorio, consultar avances y recuperar resultados para revisión.

- [Guía de uso y coordinación](docs/JULES.md)
- [Contexto enviado a Jules](docs/JULES_CONTEXT.md)
- Cliente local: `scripts/jules.ps1` (PowerShell 7).
- Comprobar acceso: `./scripts/jules.ps1 -Action Status`.
- Pruebas sin red: `./tests/jules.tests.ps1`.

Las credenciales se guardan cifradas por Windows fuera del repositorio.
Los cambios locales deben publicarse en GitHub para que Jules pueda trabajar con ellos.

## Coordinación con Claude

El [relevo para Claude](docs/RELEVO_CLAUDE.md) enlaza el protocolo, D-003 y D-004,
las correcciones del nombre del repositorio y el diagnóstico del conector MCP.
Los documentos de continuidad están en `continuidad-proyectos-ia/continuidad/`.
