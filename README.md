# CLICSHOP-AI-OPERATING-SYSTEM-v1
Desarrollo Clicshop con Agentes de AI

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
