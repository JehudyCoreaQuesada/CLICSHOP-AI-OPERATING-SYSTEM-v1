# P-001 · Sistema de continuidad multi-IA — ESTADO

**Actualizado:** 2026-09-23 · **Por:** Claude · **Fase:** Ejecución

## Objetivo
Que Jehudy, ChatGPT, Codex, Claude y Jules compartan contexto verificable sin duplicar decisiones ni sobrescribir cambios.

## Criterio de éxito
1. ChatGPT puede leer `INDICE.md` y un `ESTADO.md` de este repositorio, o recibe el mismo contexto mediante un RELEVO pegado.
2. Claude retoma un proyecto en una sesión nueva leyendo solo el repositorio, sin que Jehudy repita el contexto.
3. Se completa un ciclo real ENCARGO → revisión → ejecución → RELEVO en un proyecto de negocio.

## Fuente de verdad
- Repositorio: `JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1`.
- Continuidad: `continuidad-proyectos-ia/continuidad/`.
- `main` es la versión vigente; ya no hay una rama de revisión pendiente para P-001.

## Situación actual
- Protocolo, plantillas, índice e instrucciones vigentes en `main`. **Implementado.**
- Repositorio privado en GitHub, con contenido subido. **Implementado y verificado** por Claude (lectura, comentario en PR y escritura de contenido con lectura de vuelta).
- Instrucciones para el proyecto de ChatGPT, con el nombre real del repositorio. **Implementado** — Jehudy pegó una versión el 2026-09-22; el texto se corrigió el 2026-09-23, pendiente de volver a pegarse (ver Pendientes).
- **PR #1 fusionado a `main`** (squash, commit `c77bac4`): integra el cliente técnico de Jules (`scripts/jules.ps1`, pruebas sin red, `docs/JULES.md`, `docs/JULES_CONTEXT.md`), corrige las referencias al repositorio en instrucciones y plantilla de RELEVO, y deja D-003/D-004 redactadas sin conceder escritura permanente a Codex ni a Jules. Revisión de Claude: BLOQUEADO por gobernanza → Codex corrigió el PR → APTO → Jehudy confirmó el rol de Codex → fusionado.
- Skill de continuidad para Claude. **Propuesto.** Falta que Jehudy la guarde.
- Lectura del repositorio desde ChatGPT. **Sin verificar.**
- Jules: cliente técnico configurado y probado (autenticación, lectura, 28 comprobaciones sin red). **En pausa hasta nuevo aviso** — Jehudy confirmó el 2026-09-23 que no se ejecuta ningún encargo operativo real por ahora; la integración técnica queda disponible para cuando se retome.
- Antigravity: rol confirmado por Jehudy el 2026-09-23. **Implementado.** Ejecución local en el equipo de Jehudy (comandos Warp/PowerShell, pruebas, verificación de ramas, sincronización del repositorio de trabajo); sin acceso de escritura a la carpeta de continuidad (ver PROTOCOLO §1).
- Nombre del proyecto: confirmado que el repositorio `CLICSHOP-AI-OPERATING-SYSTEM-v1` es el contenedor general y que P-001 conserva su propio nombre, «Sistema de continuidad multi-IA», como submódulo de gobernanza. No requiere cambios.

## Decisiones vigentes
- D-001: GitHub privado como fuente única de verdad, con Claude como único escritor de este repositorio.
- D-002: Puerta de revisión obligatoria para los encargos que vienen de ChatGPT.
- D-003: Jules se incorpora como propuesta técnica de ejecución en paralelo; no se concede escritura permanente a Codex ni a Jules. Encargo operativo pendiente (ahora: Jules en pausa).
- D-004: corrección del nombre y ruta reales del repositorio en instrucciones y plantillas.
- D-005: confirmación del rol de Antigravity y pausa oficial de Jules (2026-09-23).

## Pendientes
- [ ] Volver a pegar `instrucciones/CHATGPT.md` (con el nombre de repositorio corregido) en las instrucciones del proyecto de ChatGPT — Jehudy
- [ ] Guardar la skill «continuidad-proyectos» en Claude — Jehudy
- [ ] Prueba: preguntarle a ChatGPT «¿cuál es la siguiente acción de P-001?» y confirmar que lee el repositorio correcto — Jehudy
- [ ] Confirmar qué candidatos del índice siguen activos — Jehudy
- [ ] Definir un nuevo encargo operativo para Jules cuando corresponda salir de pausa — Jehudy

## Bloqueos
(Ninguno vigente.)

## Riesgos
- **El conector de GitHub no está disponible en el chat del plan de ChatGPT.** Mitigación: usar el RELEVO pegado. El protocolo funciona igual.
- **Se sube información sensible por error.** Mitigación: regla del PROTOCOLO §6 y repositorio privado.
- **El protocolo se abandona porque cuesta mantenerlo.** Mitigación: Claude hace toda la escritura y a Jehudy solo le toca pegar bloques.
- **Cuatro agentes (Claude, Codex, Jules, Antigravity) leyendo/escribiendo sobre el mismo proyecto sin matriz de responsabilidades completa.** Mitigación: el rol de Antigravity ya quedó definido en PROTOCOLO §1 (2026-09-23) y Jules queda en pausa; falta añadir a Codex como fila formal de la tabla de roles si Jehudy decide darle un encargo recurrente.
- **Resuelto:** la carpeta de trabajo local estaba sincronizada con Google Drive (riesgo de corrupción de `.git`). Se migró a `C:\dev\CLICSHOP-AI-OPERATING-SYSTEM-v1`, verificado limpio y al día.

## Siguiente acción
**Quién:** Jehudy · **Qué:** repegar `instrucciones/CHATGPT.md` corregido en las instrucciones del proyecto de ChatGPT, guardar la skill «continuidad-proyectos» en Claude y confirmar qué candidatos del índice siguen activos.

## Entregables y enlaces
- Repositorio: github.com/JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1 (privado) — contenido en `continuidad-proyectos-ia/continuidad/`
- Instrucciones de ChatGPT: `instrucciones/CHATGPT.md`
- Instrucciones de Jules: `instrucciones/JULES.md`
- Guía y cliente de Jules: `docs/JULES.md`, `scripts/jules.ps1`
