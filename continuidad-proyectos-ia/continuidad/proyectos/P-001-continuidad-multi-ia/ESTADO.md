# P-001 · Sistema de continuidad multi-IA — ESTADO

**Actualizado:** 2026-09-22 · **Por:** Claude · **Fase:** Ejecución

## Objetivo
Que Jehudy, ChatGPT y Claude trabajen sobre el mismo contexto de proyecto sin que se pierda entre sesiones ni entre herramientas.

## Criterio de éxito
1. ChatGPT puede leer `INDICE.md` y un `ESTADO.md` de este repositorio, o recibe el mismo contexto mediante un RELEVO pegado.
2. Claude retoma un proyecto en una sesión nueva leyendo solo el repositorio, sin que Jehudy repita el contexto.
3. Se completa un ciclo real ENCARGO → revisión → ejecución → RELEVO en un proyecto de negocio.

## Restricciones
- No hay integración directa entre ChatGPT y Claude. Jehudy transporta los bloques de texto.
- En el chat normal, el conector de GitHub de ChatGPT es solo de lectura, y su disponibilidad depende del plan.
- La herramienta de Google Drive de Claude crea y lee archivos, pero no edita el contenido de uno existente.

## Situación actual
- Protocolo, plantillas, índice e instrucciones redactados. **Implementado.**
- Repositorio privado en GitHub. **Pendiente:** la integración de Claude no tiene permiso para crear repositorios (error 403). Jehudy lo crea y Claude sube el contenido.
- Instrucciones para el proyecto de ChatGPT. **Implementado.** Falta que Jehudy las pegue.
- Skill de continuidad para Claude. **Propuesto.** Falta que Jehudy la guarde.
- Lectura del repositorio desde ChatGPT. **Sin verificar.**

## Decisiones vigentes
- D-001: GitHub privado como fuente única de verdad, con Claude como único escritor.
- D-002: Puerta de revisión obligatoria para los encargos que vienen de ChatGPT.

## Pendientes
- [ ] Crear en GitHub el repositorio privado vacío `continuidad-proyectos-ia` y darle acceso a la app de Claude — Jehudy
- [ ] Subir el contenido y verificar lectura y escritura — Claude
- [ ] Crear un proyecto en ChatGPT y pegar `instrucciones/CHATGPT.md` — Jehudy
- [ ] Conectar GitHub en ChatGPT y autorizar este repositorio — Jehudy
- [ ] Guardar la skill «continuidad-proyectos» en Claude — Jehudy
- [ ] Prueba: preguntarle a ChatGPT «¿cuál es la siguiente acción de P-001?» — Jehudy
- [ ] Confirmar qué candidatos del índice siguen activos — Jehudy

## Bloqueos
- Sin repositorio no hay escritura. Solución: Jehudy crea el repositorio vacío (1 min). Responsable: Jehudy.

## Riesgos
- **El conector de GitHub no está disponible en el chat del plan de ChatGPT.** Mitigación: usar el RELEVO pegado. El protocolo funciona igual.
- **Se sube información sensible por error.** Mitigación: regla del PROTOCOLO §6 y repositorio privado.
- **El protocolo se abandona porque cuesta mantenerlo.** Mitigación: Claude hace toda la escritura y a Jehudy solo le toca pegar bloques.

## Siguiente acción
**Quién:** Jehudy · **Qué:** crear el repositorio y avisar a Claude. Luego, configurar ChatGPT (15 min).

## Entregables y enlaces
- Repositorio: github.com/JehudyCoreaQuesada/continuidad-proyectos-ia (privado)
- Instrucciones de ChatGPT: `instrucciones/CHATGPT.md`
