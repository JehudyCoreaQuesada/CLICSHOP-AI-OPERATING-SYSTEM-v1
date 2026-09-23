# Jules en Clicshop

Integración local para Windows y PowerShell 7, sin dependencias adicionales.
Repositorio: `JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1`.

## Credencial

Desde la raíz del proyecto, ejecutar `./scripts/jules.ps1 -Action Connect` y pegar
la clave en la entrada oculta. Se comprueba acceso al proyecto antes de guardarla.
Windows cifra la credencial con DPAPI para el usuario y equipo actuales en
`%LOCALAPPDATA%/Clicshop/Jules/api-key.xml`, fuera del repositorio. Para cambiarla,
repetir Connect. Para retirar la integración local, eliminar ese archivo específico.
Una revocación de acceso se hace desde la configuración de Jules.

También se admite `JULES_API_KEY` en el entorno del proceso (tiene prioridad sobre
la credencial guardada). No poner claves en comandos guardados, archivos del repo,
encargos ni capturas. La credencial cifrada no es portable a otro usuario/equipo.

## Uso

```powershell
# Verificar acceso y listar solo tareas de Clicshop
./scripts/jules.ps1 -Action Status
./scripts/jules.ps1 -Action List

# Preparar un archivo UTF-8 con objetivo, alcance y aceptación; revisar el envío
./scripts/jules.ps1 -Action Create -Title 'Mi encargo' -TaskFile ./encargo.md -DryRun

# Enviar el encargo: inicialmente genera un plan pendiente de revisión
./scripts/jules.ps1 -Action Create -Title 'Mi encargo' -TaskFile ./encargo.md

# Usar el ID devuelto por Create/List
./scripts/jules.ps1 -Action Get -SessionId ID
./scripts/jules.ps1 -Action Activities -SessionId ID
./scripts/jules.ps1 -Action Approve -SessionId ID
./scripts/jules.ps1 -Action Message -SessionId ID -TaskFile ./respuesta.md
```

`-Branch` selecciona una rama remota; por defecto `main`. `-ExecutePlan` permite
ejecutar sin la pausa de revisión del plan cuando el encargo ya lo autoriza.
`-CreatePullRequest` pide a Jules publicar una propuesta de cambio en GitHub;
no hace merge. Sin ese indicador se usa la modalidad sin automatización de PR.
Los comandos devuelven objetos PowerShell; `| ConvertTo-Json -Depth 30` muestra
planes, actividades y resultados completos. List y Activities recorren todas
las páginas. Las acciones sobre sesiones verifican que pertenecen a Clicshop.

No se reintentan escrituras automáticamente: ante un fallo de red posterior a
Create, revisar List antes de crear otra sesión para evitar encargos duplicados.
La consulta es manual; esta integración no instala tareas programadas.

## Flujo de equipo

1. Jehudy define la prioridad; Codex prepara un encargo verificable.
2. Codex comprueba que los insumos están publicados en la rama remota elegida.
3. Jules recibe el encargo y el contexto de `docs/JULES_CONTEXT.md` mediante la API.
4. Se revisa el plan; Codex puede aprobarlo dentro del alcance ya autorizado.
5. Jules implementa y comprueba. Codex o Claude revisa el resultado y las pruebas.
6. Se actualiza la continuidad y se incorpora el cambio mediante el flujo de Git
   acordado. No se editan los mismos archivos simultáneamente con varios agentes.

El protocolo histórico de continuidad describía a Claude como único escritor.
La solicitud de Jehudy del 2026-09-23 incorpora Jules para encargos dirigidos a él
y autoriza esta integración local. No cambia los permisos del conector de ChatGPT
ni autoriza por sí misma despliegues, merges o una reestructuración del producto.

La configuración local no instala un plugin de Codex ni publica estos archivos
en GitHub. Jules no ve cambios locales no publicados salvo el contexto y el
encargo que este cliente envía explícitamente.

## Verificación

`./tests/jules.tests.ps1` prueba sin red la preparación de encargos, paginación,
aislamiento por repositorio, mensajes, aprobación, manejo de errores y redirecciones.
Status y List comprueban la conexión real sin iniciar trabajo remoto. La creación
y ejecución reales se comprueban con el primer encargo concreto autorizado.

Evidencia del 2026-09-23 en este equipo: 28 comprobaciones sin red pasaron;
Connect validó el repositorio y guardó la credencial cifrada; Status leyó esa
credencial y confirmó `main`; List respondió correctamente con cero sesiones
del proyecto. No se creó una tarea remota como parte de esta comprobación.

Referencias oficiales consultadas el 2026-09-23:
- [Autenticación](https://jules.google/docs/api/reference/authentication/)
- [Sesiones](https://developers.google.com/jules/api/reference/rest/v1alpha/sessions)
- [Actividades](https://jules.google/docs/api/reference/activities/)
