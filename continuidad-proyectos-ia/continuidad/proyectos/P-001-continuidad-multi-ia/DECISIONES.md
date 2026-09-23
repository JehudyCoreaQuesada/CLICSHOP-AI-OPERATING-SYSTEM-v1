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

## D-003 · Incorporar Jules al desarrollo de Clicshop
- **Fecha:** 2026-09-23
- **Estado:** Vigente para la incorporación; implementación verificada y preparada en la rama de revisión `codex/jules-claude-continuidad`, pendiente de incorporar a `main`.
- **Decidió:** Jehudy, mediante solicitud expresa de integrar Jules al desarrollo del proyecto.
- **Decisión:** habilitar un cliente de la API de Jules para el repositorio `JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1`.
- **Aplicación:** Codex prepara la integración y los encargos; Jules realiza tareas acotadas en sesiones aisladas; Codex o Claude revisa sus resultados. La exclusividad de escritura de D-001 queda acotada al flujo manual anterior; D-002 mantiene la revisión de objetivos, alcance y aceptación, aplicada también al responsable del encargo a Jules.
- **Detalles de implementación:** credencial cifrada por Windows fuera del repositorio; planes revisables por defecto; ejecución directa y PR automático disponibles mediante opciones explícitas. Estos detalles son elecciones técnicas de Codex, no decisiones adicionales atribuidas a Jehudy.
- **Consecuencias:** Jules trabaja sobre ramas remotas y no recibe automáticamente los archivos locales. No se autoriza por esta decisión un merge, despliegue ni una primera tarea de producto no definida.

## D-004 · Corregir la identidad y las rutas del repositorio
- **Fecha:** 2026-09-23
- **Estado:** Corrección aplicada por Codex a petición de Jehudy de resolver el bloqueo de coordinación.
- **Hecho verificado:** el remoto de Git y la fuente consultada en Jules identifican `JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1`.
- **Corrección:** `continuidad-proyectos-ia/continuidad/` es una carpeta dentro de ese repositorio. Las instrucciones y la plantilla de RELEVO deben usar el repositorio real y esa ruta completa como base.
- **Continuidad:** conservar D-003 para Jules y D-004 para esta corrección, coincidiendo con los temas reportados por Claude. No se ha recibido ni sustituido silenciosamente el contenido íntegro del borrador de Claude; cualquier diferencia adicional se revisará sobre esta versión publicada.
- **Consecuencias:** las referencias históricas a crear un repositorio separado quedan superadas para este proyecto. La escritura del conector de Claude se considera pendiente de prueba hasta comprobar una operación y su lectura posterior.
