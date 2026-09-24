# CLICSHOP-AI-OPERATING-SYSTEM-v1
Desarrollo Clicshop con Agentes de AI

## Estado y entregables

- [Actualización del proyecto y revisión de relevos](docs/ACTUALIZACION_PROYECTO.md).
- [Diseño: libro de marca, prompts y referencias](docs/diseno/README.md).
- [Revisión del PR #3: OpenCode, Antigravity y Omnisend](docs/revisiones/REVISION_PR3.md).
- [Propuesta de primera campaña de Omnisend](docs/marketing/PRIMERA_CAMPANA_OMNISEND.md).

La integración técnica de Jules está fusionada y **en pausa por D-005**.
OpenCode y el registro de Omnisend están en el PR #3, pendiente de fusión;
su existencia en una rama no equivale a aprobación ni a prueba operativa.

## Desarrollo con Google Jules

El cliente de Jules conserva la capacidad técnica de recibir encargos y consultar
avances. No iniciar trabajo remoto mientras siga vigente la pausa de D-005.

- [Guía de uso y coordinación](docs/JULES.md)
- [Contexto enviado a Jules](docs/JULES_CONTEXT.md)
- Cliente local: `scripts/jules.ps1` (PowerShell 7).
- Comprobar acceso: `./scripts/jules.ps1 -Action Status`.
- Pruebas sin red: `./tests/jules.tests.ps1`.

Las credenciales se guardan cifradas por Windows fuera del repositorio.
Los cambios locales deben publicarse en GitHub para que Jules pueda trabajar con ellos.

## Coordinación con Claude

El [relevo de esta actualización](docs/relevos/RELEVO_ACTUALIZACION.md) reúne los
entregables y propuestas que Claude debe revisar. El [relevo original de Jules](docs/RELEVO_CLAUDE.md)
se conserva como registro histórico del PR #1.
Los documentos de continuidad están en `continuidad-proyectos-ia/continuidad/`.
