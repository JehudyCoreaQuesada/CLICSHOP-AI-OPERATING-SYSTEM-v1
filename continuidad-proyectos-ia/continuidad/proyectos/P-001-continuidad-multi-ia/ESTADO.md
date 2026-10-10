# P-001 · Sistema de continuidad multi-IA — ESTADO

**Actualizado:** 2026-09-23 · **Por:** Claude · **Fase:** Ejecución

## Objetivo
Que Jehudy, ChatGPT, Codex, Claude, Jules, Antigravity y OpenCode compartan contexto verificable sin duplicar decisiones ni sobrescribir cambios.

## Criterio de éxito
1. ChatGPT puede leer `INDICE.md` y un `ESTADO.md` de este repositorio, o recibe el mismo contexto mediante un RELEVO pegado.
2. Claude retoma un proyecto en una sesión nueva leyendo solo el repositorio, sin que Jehudy repita el contexto.
3. Se completa un ciclo real ENCARGO → revisión → ejecución → RELEVO en un proyecto de negocio.

## Fuente de verdad
- Repositorio: `JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1`.
- Continuidad: `continuidad-proyectos-ia/continuidad/`.
- `main` es la versión vigente. Rama en revisión: `claude/opencode-conexion` (D-006).

## Situación actual
- Protocolo, plantillas, índice e instrucciones vigentes en `main`. **Implementado.**
- Repositorio privado en GitHub. **Verificado** por Claude (lectura, comentario en PR, escritura con lectura de vuelta).
- Instrucciones de ChatGPT corregidas el 2026-09-23. **Implementado**, pendiente de volver a pegarse.
- PR #1 fusionado (`c77bac4`): cliente técnico de Jules, D-003/D-004. **Implementado.**
- Skill de continuidad para Claude. **Propuesto.** Falta que Jehudy la guarde.
- Lectura del repositorio desde ChatGPT. **Sin verificar.**
- Jules: **en pausa** (D-005).
- Antigravity: rol confirmado (D-005). **Implementado.**
- **OpenCode (D-006):** `AGENTS.md`, `opencode.json` y PROTOCOLO v1.1 publicados en la rama `claude/opencode-conexion` con PR abierto. **Implementado, sin verificar**: falta conectar la llave API y la prueba de humo.

## Decisiones vigentes
- D-001: GitHub privado como fuente única; Claude único escritor de la continuidad.
- D-002: puerta de revisión obligatoria.
- D-003: Jules como propuesta técnica, sin escritura permanente (ahora en pausa).
- D-004: nombre y rutas reales del repositorio.
- D-005: rol de Antigravity y pausa de Jules.
- D-006: OpenCode como ejecutor local vía `AGENTS.md` — **propuesta**, vigente al fusionar el PR.

## Pendientes
- [ ] Crear llave API en console.anthropic.com con límite de gasto y conectarla en OpenCode — Jehudy
- [ ] Revisar y fusionar el PR de OpenCode (D-006) — Jehudy
- [ ] Prueba de humo de OpenCode (ver PR) — Jehudy
- [ ] Volver a pegar `instrucciones/CHATGPT.md` en el proyecto de ChatGPT — Jehudy
- [ ] Guardar la skill «continuidad-proyectos» en Claude — Jehudy
- [ ] Probar que ChatGPT lee el repositorio correcto — Jehudy
- [ ] Confirmar qué candidatos del índice siguen activos — Jehudy

## Bloqueos
(Ninguno vigente.)

## Riesgos
- **Conector de GitHub no disponible en el chat de ChatGPT.** Mitigación: RELEVO pegado.
- **Información sensible subida por error.** Mitigación: PROTOCOLO §6, `.gitignore`, repo privado.
- **Costo de API de OpenCode sin control.** Mitigación: límite de gasto mensual en la consola de Anthropic.
- **Varios agentes sobre el mismo repo.** Mitigación: ramas por agente, PR obligatorio, Claude como único escritor de la continuidad. La restricción de ruta para OpenCode es por instrucción, no técnica.

## Siguiente acción
**Quién:** Jehudy · **Qué:** conectar la llave API en OpenCode, correr la prueba de humo del PR y fusionarlo si pasa.

## Entregables y enlaces
- Repositorio: github.com/JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1 (privado)
- Reglas para agentes de código: `AGENTS.md` · Configuración de OpenCode: `opencode.json`
- Instrucciones: `instrucciones/CHATGPT.md`, `instrucciones/JULES.md`
- Guía y cliente de Jules: `docs/JULES.md`, `scripts/jules.ps1`
