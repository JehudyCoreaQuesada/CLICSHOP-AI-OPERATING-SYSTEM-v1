# P-002 — propuesta de primera campaña

Estado: **Propuesto**, sin destinatarios cargados, sin programación y sin envío.
Basado en el relevo de Claude y el PR #3 (`86e82d5`), no en una revisión nueva de
la cuenta Omnisend. Fecha de preparación: 2026-09-23, Costa Rica.

## Prioridad

Preparar una bienvenida a quienes se suscribieron voluntariamente. Si la tienda
ya está en producción al ejecutar el encargo, convertirla en anuncio de apertura
con una sola llamada al catálogo. Si sigue con contraseña, no anunciar apertura
ni dirigir el botón a un catálogo inaccesible; conservar el borrador.

No utilizar la plantilla de comunicado formal como prueba de una promoción
terminada: es una base reutilizable con marcadores pendientes.

## Orden de ejecución propuesto

1. Jehudy completa la verificación de identidad de GoDaddy.
2. Claude comprueba el SPF único, DKIM y la validación del dominio en Omnisend;
   conserva el servicio de Google Workspace y registra los resultados observados.
3. Jehudy confirma el alias de Workspace y el remitente verificado.
4. Incorporar el logo oficial a Omnisend y a la plantilla guardada; confirmar redes
   y corregir el contraste del botón. Revisar app embed para los formularios y
   automatizaciones que lo requieran, sin confundirlo con la validación del dominio.
5. Confirmar estado de la tienda y URL pública de destino. Revisar segmento de
   suscriptores, exclusión de bajas y límite disponible de envío en la cuenta.
6. Preparar una prueba a destinatarios que Jehudy indique; comprobar remitente,
   enlaces, baja visible, logo, móvil y ausencia de marcadores. No enviar pruebas
   ni campañas automáticamente por leer este documento.
7. Presentar campaña y audiencia concretas a Jehudy antes de programar o enviar.

## Borrador para usar solo cuando la tienda esté publicada

**Asunto:** Clicshop ya está en línea: ¡Todo al alcance de un Clic!

**Vista previa:** Conocé nuestra tienda y explorá los productos disponibles.

Hola:

Gracias por suscribirte a las novedades de Clicshop Costa Rica.

Nuestra tienda en línea ya está disponible. Queremos facilitarte el acceso a
productos de calidad con un servicio eficiente y transparente.

Te invitamos a explorar el catálogo y conocer los productos disponibles.

**Botón:** Explorar la tienda

**Destino:** URL pública de la tienda, comprobada al preparar el envío.

¡Todo al alcance de un Clic!

El equipo de Clicshop Costa Rica

**Pie operativo pendiente:** datos comerciales y contacto confirmados, motivo de
suscripción y enlace de baja de Omnisend. Este bloque de instrucciones no forma
parte del texto que verá el cliente.

## Medición inicial

Revisar entregas, rebotes, bajas, quejas y clics al catálogo. Registrar resultados
reales antes de proponer descuentos, ampliar audiencia o crear nuevas automatizaciones.
No se fija una tasa objetivo sin una base histórica de la tienda.
