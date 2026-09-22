# P-001 · Bitácora de decisiones

Solo se agregan entradas. Una decisión no se borra: se marca como reemplazada.

---

## D-001 · GitHub privado como fuente única de verdad
- **Fecha:** 2026-09-22
- **Estado:** Vigente
- **Decidió:** Jehudy (propuesta de Claude)
- **Contexto:** hace falta continuidad entre ChatGPT y Claude, que no tienen integración directa.
- **Decisión:** un repositorio privado en GitHub con archivos Markdown. Claude escribe; ChatGPT lee con su conector o recibe bloques RELEVO pegados.
- **Alternativas descartadas:**
  - *Google Drive:* ChatGPT sí puede editar allí, pero la herramienta de Drive de Claude no edita el contenido de archivos existentes, así que habría que crear una copia nueva en cada cambio. Además, dos escritores generan versiones en conflicto.
  - *Integración por API (OpenAI + Anthropic):* tiene costo de uso, requiere manejar llaves y montar un servidor, y no comparte el contexto de la app de ChatGPT. Es desproporcionada para el problema.
  - *Solo pegar texto:* no deja un historial consultable ni versionado.
- **Consecuencias:** hay historial completo y reversible. ChatGPT no escribe directamente, así que sus decisiones pasan por Jehudy. Si el plan de ChatGPT no permite GitHub en el chat, la lectura se hace con RELEVO pegado.

## D-002 · Puerta de revisión obligatoria de encargos
- **Fecha:** 2026-09-22
- **Estado:** Vigente
- **Decidió:** Jehudy (propuesta de Claude)
- **Contexto:** el riesgo principal de separar la definición (ChatGPT) de la ejecución (Claude) es que los requisitos lleguen incompletos.
- **Decisión:** Claude dictamina APTO, APTO CON SUPUESTOS o BLOQUEADO antes de ejecutar cada encargo (PROTOCOLO §4).
- **Alternativas descartadas:** ejecutar directamente, porque obliga a rehacer trabajo cuando el encargo es ambiguo.
- **Consecuencias:** suma un paso breve a cada encargo y reduce el retrabajo.
