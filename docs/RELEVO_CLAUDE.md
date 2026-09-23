# Relevo de Codex a Claude — P-001

Fecha: 2026-09-23. Repositorio: `JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1`.
Rama publicada: `codex/jules-claude-continuidad`.
Propuesta de revisión: [PR #1](https://github.com/JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1/pull/1).
Commit de implementación y correcciones: `d10a6bd69b0ab6f1c3eaf09ae26d1720cdda1da4`.

## Contenido que debes leer antes de escribir

- [Protocolo y adenda de Jules](../continuidad-proyectos-ia/continuidad/PROTOCOLO.md).
- [Decisiones vigentes, incluyendo D-003 y D-004](../continuidad-proyectos-ia/continuidad/proyectos/P-001-continuidad-multi-ia/DECISIONES.md).
- [Instrucciones de Jules](../continuidad-proyectos-ia/continuidad/instrucciones/JULES.md).
- [Guía del cliente y pruebas verificadas](JULES.md).

La propuesta técnica de Jules está registrada como D-003; no aprueba nuevos roles.
D-004 corrige el nombre del repositorio y las rutas. Compara tu borrador contra estos archivos; no agregues
otra D-003/D-004 ni reemplaces documentos enteros con una versión anterior.
El contenido íntegro de tu borrador no fue recibido por Codex, por lo que cualquier
aporte adicional debe conservarse y compararse, no descartarse.

## Ajuste tras tu revisión de gobernanza

Se retiró la adenda del protocolo: `PROTOCOLO.md` vuelve a coincidir con la versión
de `main`, y D-001 permanece intacta. Codex preparó una propuesta puntual para tu
revisión; no se autodesigna escritor permanente ni decide por Jehudy el papel de
Jules. D-003 se presenta como propuesta corregida, pendiente de revisión, y el
cliente no se ha usado para iniciar trabajo remoto. La capacidad de solicitar un
PR a Jules no equivale a autorización para hacerlo.

Tu [comentario de revisión](https://github.com/JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1/pull/1#issuecomment-5800251034)
se verificó directamente en GitHub y confirma escritura de comentarios mediante
el conector. Eso no prueba por sí solo `push_files` o `create_or_update_file`, pues
los comentarios y el contenido usan permisos distintos. La verificación de
archivos sigue pendiente de una operación acotada y su lectura posterior.

## Diagnóstico comprobado en la interfaz de GitHub

Al iniciar la revisión, `Claude Github MCP Connector` aparecía en **Authorized
GitHub Apps**, y su página indicaba que no estaba instalado en ninguna cuenta
accesible. No era una OAuth App clásica. La aplicación `Claude` de Claude Code
es independiente y no corresponde al conector MCP usado en el chat.

La instalación del conector solicita lectura de acciones y metadatos, y lectura
y escritura de código, discusiones, incidencias, pull requests y proyectos.
Se preparó la selección exclusiva de Clicshop. El estado final de instalación y
la prueba de escritura deben verificarse; este diagnóstico no acredita por sí
solo que una escritura desde tu sesión haya funcionado.

## Comprobación posterior desde Claude

Con el conector instalado, vuelve a leer esta rama desde la misma conexión que
usarás para escribir. Si tu sesión conserva el error, renueva la conexión con
GitHub desde Claude y vuelve a seleccionar el repositorio. Comprueba una escritura
acotada en una rama de trabajo y lee el resultado para confirmar el commit.
Registra el identificador de ese commit como evidencia. No pruebes sobrescribiendo
el protocolo ni la bitácora de decisiones en `main`.

Si persiste el fallo, registra herramienta, owner, repo, branch, ruta, método y
mensaje de error sin claves. Un 404 aislado no confirma permisos de solo lectura.
