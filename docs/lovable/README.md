# Incorporación de Lovable al equipo de Clicshop

Fecha: 2026-09-23 (Costa Rica). Jehudy solicitó integrar Lovable al equipo.

## Resultado implementado y verificado

Se guardó el [contexto de colaboración](CONTEXTO_LOVABLE.md) en **Project knowledge**
del proyecto existente [Claude's AI Assistant](https://lovable.dev/projects/3a8bd8d2-a8d4-4c2b-9a45-94f1f504eb66).
Se leyó el conocimiento anterior (vacío), se escribió el contenido y se comprobó
su igualdad mediante lectura posterior. No se cambiaron instrucciones globales
del workspace, código, diseño, visibilidad, base de datos ni publicación de la app.

El contexto permite retomar Clicshop sin repetir la carpeta local. Incluye rol
inicial, equipo, fuentes, ramas revisadas, marca y formato de entrega. Es una copia
transmitida por Codex, no una conexión viva al repositorio ni una revisión completa
de la app de chat. No se probó todavía una respuesta del agente usando el nuevo
conocimiento ni se inició una construcción para comprobarlo.

## Papel inicial

Lovable aporta interfaces, prototipos y pantallas por encargo concreto. El chat
existente conserva sus decisiones: varias conversaciones, historial en base de
datos y cristal esmerilado oscuro. El contexto de la tienda no lo transforma en
un comercio electrónico ni autoriza una nueva aplicación.

Claude mantiene la continuidad oficial; Codex revisa propuestas por encargo;
Antigravity verifica y ejecuta localmente. Jules sigue en pausa y OpenCode conserva
el estado propuesto del PR #3. El alta formal en la matriz del protocolo y la
numeración de la decisión corresponden a Claude, sobre la solicitud de Jehudy.

## Acceso pendiente a GitHub

Se consultó el catálogo de conectores: GitHub API está disponible. El listado
de conectores añadidos devolvió cero conexiones; eso no acredita acceso al repo.

Para consultar este repositorio desde el chat de Lovable, usar **GitHub API →
App + chat connector**, vinculándolo al proyecto. La documentación diferencia
este acceso del mecanismo Git sync, destinado a sincronizar el código de la app.
Git sync crea un repositorio nuevo al conectar el proyecto; no usarlo para
reemplazar el repositorio coordinador de Clicshop.
[GitHub API](https://docs.lovable.dev/integrations/github-api) ·
[Git sync](https://docs.lovable.dev/integrations/github).

La herramienta de Lovable devuelve este punto de configuración y exige completar
allí la conexión: [Conectores de Lovable](https://lovable.dev/dashboard?connectors).
Para este primer acceso, limitar a lectura del repositorio Clicshop. Si se usa
una credencial granular, introducirla únicamente en el formulario seguro del
conector; no pegarla en mensajes, knowledge ni Git. No se creó ni transmitió una
credencial y no se concedieron permisos de escritura en esta sesión.

## Comprobación de conexión, cuando esté autorizada

Pedir una revisión en modo planificación: leer README, PROTOCOLO e INDICE de
`main`, identificar el commit y la siguiente acción de P-001. Después leer el
brief de diseño en la rama del PR #4 si sigue pendiente. La respuesta debe listar
los archivos realmente leídos y distinguirlos del contexto recibido.

Solo después entregar un encargo de interfaz con pantalla, objetivo, datos,
archivos permitidos, aceptación y responsable de revisión. Enviar URL y relevo
al equipo; no sincronizar cambios automáticamente sobre `main` o continuidad.

## Relevo para Claude

Jehudy solicitó la incorporación. Contexto de Lovable implementado y leído de
vuelta; rol operativo inicial acotado a interfaces/prototipos. Acceso directo al
repo y prueba del agente pendientes. Archivar esta incorporación en continuidad
sin reutilizar D-006 ni declarar concedida escritura permanente. No se alteró
el protocolo desde Codex.
