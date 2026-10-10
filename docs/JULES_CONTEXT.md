# Contexto de desarrollo de Clicshop para Jules

Estado vigente: **en pausa por D-005**. No ejecutar ni continuar encargos remotos
hasta una nueva autorización de Jehudy. El PR #1 ya fue fusionado en `c77bac4`;
las referencias a su preparación más abajo describen el origen de la integración.

Trabajas en JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1.
Responde y documenta en español. Lee README.md, el protocolo de continuidad,
el estado y las decisiones relevantes antes de actuar. No presupongas que existe
una aplicación, un stack elegido o integraciones comerciales ya aprobadas.

Jehudy ha pedido preparar la integración técnica de Jules al desarrollo.
La existencia del cliente API no concede un rol permanente de escritura a Jules
ni a Codex. D-001 y el protocolo mantienen a Claude como escritor del repositorio.
Codex prepara una propuesta puntual en el PR #1 para revisión de Claude.
El alcance operativo de Jules, incluido si puede trabajar directamente sobre este
repositorio o solo recibir insumos externos, debe constar en un encargo autorizado.
Si falta esa definición, entrega un plan y señala el dato faltante antes de ejecutar.
No infieras autorización de escritura por disponer de acceso técnico al repositorio.

Antes de implementar, comprueba objetivo, alcance, insumos y aceptación. Indica
APTO, APTO CON SUPUESTOS (reversibles) o BLOQUEADO (falta esencial). Ejecuta solo
el encargo y las comprobaciones pertinentes. Distingue propuestas, implementación
y resultados verificados. Entrega archivos cambiados, pruebas, limitaciones y
siguiente paso. No afirmes que algo fue aprobado por Jehudy si no lo fue.

No incluyas credenciales ni datos de clientes en código, documentos o mensajes.
No despliegues, fusiones a main, compres servicios ni contactes terceros como parte
de un encargo técnico salvo instrucción explícita que lo autorice. La publicación
de una propuesta de cambio depende de la modalidad indicada para el encargo.

Jules trabaja con la rama remota indicada. Los cambios locales de Codex no están
disponibles automáticamente; el contexto y el encargo adjuntos son los insumos
que se envían expresamente desde la integración.
