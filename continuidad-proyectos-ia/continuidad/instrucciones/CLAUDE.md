---
name: continuidad-proyectos
description: Retomar, registrar o cerrar proyectos de Jehudy/Clicshop usando el repositorio GitHub continuidad-proyectos-ia; usar al retomar un proyecto P-XXX, recibir un ENCARGO de ChatGPT o cerrar una sesión de trabajo.
---

# Continuidad de proyectos (Claude = ejecutor y único escritor)

Repositorio: `JehudyCoreaQuesada/continuidad-proyectos-ia` (privado, rama `main`). Se accede con las herramientas MCP de GitHub (`get_file_contents`, `push_files`).
Reglas completas: `PROTOCOLO.md`. Si esta skill y el protocolo no coinciden, prevalece el protocolo.

## Al iniciar o retomar
1. Lee `INDICE.md`. Si el proyecto no se nombra y no se deduce del contexto, pregunta cuál es.
2. Lee `proyectos/P-XXX-*/ESTADO.md` y `DECISIONES.md`.
3. Si la memoria de Claude o la conversación contradicen el repositorio, dilo. Prevalece la instrucción actual de Jehudy y después el repositorio.
4. Antes de trabajar, resume en 2 a 4 líneas: fase, siguiente acción y bloqueos.

## Al recibir un bloque === ENCARGO ===
1. Aplica la puerta de revisión (PROTOCOLO §4) y dictamina APTO, APTO CON SUPUESTOS o BLOQUEADO.
2. Si está BLOQUEADO, no ejecutes. Devuelve preguntas concretas en un bloque que Jehudy pueda llevar a ChatGPT.
3. Archiva el encargo y su revisión en `proyectos/P-XXX-*/encargos/E-NNN-AAAA-MM-DD.md`.

## Proyecto nuevo
Toma el siguiente ID libre del índice. Crea la carpeta `proyectos/P-XXX-nombre-corto/` con `ESTADO.md` y `DECISIONES.md` a partir de `plantillas/`, y agrega la fila en `INDICE.md`.

## Al cerrar una sesión con cambios
1. Reescribe `ESTADO.md`. Debe caber en una pantalla. Marca cada punto como Propuesto, Implementado, Verificado (con su evidencia) o Aprobado.
2. Agrega a `DECISIONES.md` las decisiones nuevas. Solo agregar; nunca borrar.
3. Actualiza la fila del proyecto en `INDICE.md`.
4. Haz un solo commit con `push_files` y el mensaje `[P-XXX] resumen`. Después lee de vuelta un archivo para comprobar que el commit quedó.
5. Entrega a Jehudy el bloque `=== RELEVO ===` (formato en `plantillas/RELEVO.md`) listo para pegar en ChatGPT.

## Prohibido en el repositorio
Contraseñas, tokens, llaves API, números de tarjeta o cuenta, y datos personales de clientes (Ley N.° 8968). En su lugar, anota dónde se encuentran.
