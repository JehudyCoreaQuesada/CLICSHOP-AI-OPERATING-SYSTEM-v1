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

## D-003 · Propuesta técnica de integración de Jules; sin cambio de escritor
- **Fecha:** 2026-09-23
- **Estado:** Propuesta en PR #1, pendiente de revisión e incorporación. Esta redacción corrige el borrador inicial de Codex, que presentaba una ampliación de roles como vigente sin decisión expresa de Jehudy.
- **Solicitud recibida:** Jehudy pidió conectar e integrar Jules al desarrollo; no estableció aquí a Codex como escritor permanente.
- **Propuesta de Codex:** cliente de la API de Jules configurado para `JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1`, con autenticación y consultas verificadas. No se inició ninguna sesión remota de trabajo.
- **Gobernanza vigente:** D-001 y D-002 se conservan. Codex es autor de esta propuesta puntual para que Claude la revise; no se concede escritura permanente a Codex ni a Jules. La adenda que limitaba la exclusividad de Claude al flujo histórico fue retirada del PR.
- **Detalles de implementación:** credencial cifrada por Windows fuera del repositorio; planes revisables por defecto; ejecución directa y PR automático disponibles mediante opciones explícitas. Estos detalles son elecciones técnicas de Codex, no decisiones adicionales atribuidas a Jehudy.
- **Pendiente:** definir el destino operativo de Jules y sus límites antes de ejecutar encargos, considerando el acuerdo sin acceso a este repositorio reportado por Claude. La capacidad técnica del cliente no sustituye esa autorización. No se autoriza por esta entrada merge ni despliegue.

## D-004 · Corregir la identidad y las rutas del repositorio
- **Fecha:** 2026-09-23
- **Estado:** Corrección aplicada por Codex a petición de Jehudy de resolver el bloqueo de coordinación.
- **Hecho verificado:** el remoto de Git y la fuente consultada en Jules identifican `JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1`.
- **Corrección:** `continuidad-proyectos-ia/continuidad/` es una carpeta dentro de ese repositorio. Las instrucciones y la plantilla de RELEVO deben usar el repositorio real y esa ruta completa como base.
- **Continuidad:** conservar D-003 para Jules y D-004 para esta corrección, coincidiendo con los temas reportados por Claude. No se ha recibido ni sustituido silenciosamente el contenido íntegro del borrador de Claude; cualquier diferencia adicional se revisará sobre esta versión publicada.
- **Consecuencias:** las referencias históricas a crear un repositorio separado quedan superadas para este proyecto. La escritura del conector de Claude se considera pendiente de prueba hasta comprobar una operación y su lectura posterior.
