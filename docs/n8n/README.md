# Entorno n8n de Clicshop

Verificado el 2026-09-24 (Costa Rica), por encargo de Jehudy.

## Acceso

- [Entorno de Clicshop](https://clicshopcr01.app.n8n.cloud/).
- [Asistente de n8n](https://clicshopcr01.app.n8n.cloud/assistant).
- [Administración de n8n Cloud](https://app.n8n.cloud/).

La página de lanzamiento indicada por Jehudy ya mostraba «Your workspace is
ready!». Se pulsó «Start automating» y se comprobó el acceso al asistente dentro
de la instancia `clicshopcr01`. La sesión estaba autenticada; no se crearon ni
modificaron credenciales y no fue necesario aceptar términos en esta intervención.

## Estado observado

| Elemento | Resultado |
|---|---|
| Entorno Cloud | Creado y accesible por navegador |
| Pantalla inicial | Asistente con entrada para describir automatizaciones |
| Prueba de cuenta | La interfaz mostraba 14 días restantes |
| Ejecuciones | La interfaz mostraba 0 de 1.000 utilizadas |
| Integración con Codex o el repositorio | No configurada; acceso comprobado por navegador |
| Flujos de trabajo | No creados, activados ni ejecutados por Codex en esta sesión |
| Credenciales de servicios externos | No añadidas ni comprobadas |
| Zona horaria | Pendiente de verificar; objetivo para Clicshop: America/Costa_Rica |

Los datos de prueba y uso son una observación de la cuenta en esa fecha, no una
garantía de precio o capacidad futura. No se contrató un plan de pago.

## Siguiente configuración

1. Definir el primer proceso: disparador, datos de entrada, resultado esperado,
   responsables y qué acciones externas puede realizar.
2. Verificar la zona horaria del entorno y de cualquier flujo programado.
3. Conectar solo los servicios necesarios mediante sus pantallas de autorización;
   guardar secretos en el almacén de credenciales de n8n, nunca en Git o prompts.
4. Preparar y probar el flujo con datos de ejemplo antes de habilitar acciones
   reales. Documentar su identificador y exportar una copia revisada sin secretos.
5. Registrar en continuidad el alcance que Jehudy asigne a n8n. La creación del
   entorno no activa coordinación automática entre Claude, Codex, Lovable y Jules.

## Relevo para Claude

Entorno de n8n Cloud accesible y verificado. Integraciones, zona horaria y primer
flujo todavía pendientes. No se asignó número de proyecto ni decisión nueva,
no se modificó continuidad y no se activaron automatizaciones. La siguiente
acción es acordar un proceso concreto con criterio de aceptación.
