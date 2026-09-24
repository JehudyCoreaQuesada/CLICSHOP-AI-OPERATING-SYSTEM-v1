# Revisión crítica del PR #3 — P-001 y P-002

Revisión de Codex: 2026-09-23, Costa Rica. El relevo de P-002 está fechado
2026-09-24; se conserva esa fecha original. No se modifica su autoría.

Fuente: [PR #3](https://github.com/JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1/pull/3),
rama `claude/opencode-conexion`, commit `86e82d5468f64c49f0a3d195140818e9f3943f6b`.
Estado consultado en GitHub: abierto, no fusionado. Base: `main` en `a004159`.

## Dictamen

**APTO CON SUPUESTOS para revisión documental; pendiente de correcciones y prueba
operativa antes de dar OpenCode por verificado.** No se ejecutó OpenCode, no se
conectó una llave y no se fusionó el PR. Los estados de Omnisend proceden del
relevo y los archivos de Claude; no se verificó la cuenta de Omnisend en esta sesión.

## P-001: OpenCode y Antigravity

La separación propuesta es razonable: OpenCode implementa código por encargo;
Antigravity ejecuta pruebas, verifica ramas y sincroniza el entorno. Las reglas
de Antigravity permiten código solo mediante un encargo adicional explícito.
No hay que convertir esa excepción en dos agentes implementando la misma tarea.

Propuesta operativa: cada encargo identifica un responsable, rama, archivos y
criterios de aceptación. El otro agente revisa o prueba un commit concreto. Usar
checkouts separados si trabajan simultáneamente; nunca cambiar la rama bajo un
proceso del otro agente. Claude conserva la continuidad y Jules sigue en pausa.
Esto es una recomendación, no una decisión D-007 ni una ampliación de roles.

### Hallazgos sobre `opencode.json`

1. **P1 — `git branch*` permite también modificar y borrar ramas.** El patrón
   declarado como permitido coincide con `git branch -D ...` y `git branch -M ...`.
   Reducirlo a consultas concretas (`git branch`, `git branch --list*`,
   `git branch --show-current`, `git branch -v`, `git branch -vv`); mantener las
   demás operaciones en `ask` o `deny` según la regla acordada.
2. **P2 — Los bloqueos de push no cubren todas las formas de escribir el comando.**
   `git push origin --force ...` cae en `ask`, no en `deny`; `git push` sin argumentos
   también depende de aprobación y de su destino configurado. No describir estos
   patrones como protección exhaustiva de `main`. Reforzar los patrones de fuerza
   y revisar el destino de cada push; conservar la protección del servidor cuando
   esté disponible y configurada. No se comprobó la protección remota de ramas.
3. **P2 — La continuidad no está bloqueada técnicamente por ruta.** Es una limitación
   reconocida en D-006, no una prueba superada. Proponer reglas de edición por ruta
   para `continuidad-proyectos-ia/continuidad/` y mantener revisión del shell:
   bloquear una herramienta de edición no impide por sí solo escrituras mediante
   comandos. Validar las rutas en la versión instalada antes de afirmar aislamiento.

La documentación de OpenCode describe patrones con comodines, precedencia de la
última coincidencia y permisos de edición por ruta. Se usó para interpretar la
configuración, no como evidencia de una ejecución local.
[Permisos oficiales](https://opencode.ai/docs/permissions/).

### Evidencia estática, sin ejecutar comandos destructivos

Se parseó el JSON de `86e82d5` y se evaluaron cadenas contra sus patrones:

| Cadena evaluada | Resultado configurado |
|---|---|
| `git status --short` | allow |
| `git branch --list` | allow |
| `git branch -D ejemplo-no-ejecutar` | allow |
| `git branch -M ejemplo-no-ejecutar` | allow |
| `git push origin main` | deny |
| `git push --force origin ejemplo` | deny |
| `git push origin --force ejemplo` | ask |
| `git push` | ask |
| `git reset --hard` | deny |

Esta comprobación de patrones no sustituye la prueba de humo del motor de permisos.
Verificar en un repositorio desechable que el agente carga las instrucciones,
identifica su rol, pide autorización al editar, respeta las rutas y deja registro
de la versión y el resultado. No probar borrados sobre las ramas del proyecto.

`AGENTS.md` y `instructions` son mecanismos documentados para OpenCode; no demuestran
que todos los demás agentes carguen esos mismos archivos automáticamente.
[Reglas oficiales](https://opencode.ai/docs/rules/).

## P-002: revisión de D-002 y de la plantilla

**Recomendación:** Accent `#EE601E`, Dark `#333333`, Light `#F8F9FB`, con el azul
`#1A47B1` aplicado explícitamente al encabezado, títulos y pie de la plantilla.
Respeta la función de texto que indica el libro sin renunciar a la identidad azul.
La asignación actual de Dark azul es legible, pero no coincide con el color de
párrafos del libro. Esta recomendación queda propuesta para Claude y Jehudy;
no se cambió D-002 ni la configuración externa.

Omnisend define Dark para textos y títulos. Además, cambiar Brand assets no
actualiza automáticamente las plantillas personalizadas ya guardadas: el HTML
formal existente necesita revisión propia, incluido el logo.
[Brand assets de Omnisend](https://support.omnisend.com/en/articles/6099524-manage-your-brand-assets).

La plantilla de `86e82d5` ya usa `#333333` en los párrafos y azul en los títulos:
esa parte está alineada. El CTA tiene texto blanco de 15 px sobre `#EE601E`.
El contraste calculado es aproximadamente 3,32:1; se propone negro sobre naranja
(6,33:1) o blanco sobre azul (8,14:1), sin cambiar el naranja oficial.
Revisar también el texto secundario `#4F77B5` en tamaños pequeños.

La copia HTML incluye marcadores pendientes y no muestra un enlace de baja.
Omnisend indica que lo incorpora automáticamente a correos promocionales;
por tanto, la ausencia en el archivo no prueba que falte en el correo final.
Comprobarlo en la vista final y en la prueba de entrega antes de enviar.
[Bajas en Omnisend](https://support.omnisend.com/en/articles/3846938-customize-your-unsubscribe-page-text-and-link-position).

## Prioridad recomendada

Primero cerrar identidad del remitente, DNS, logo y prueba de entrega. Después,
preparar una bienvenida a suscriptores o un anuncio de apertura cuando la tienda
esté realmente disponible. No enviar una promoción a una página con contraseña.
El [plan y borrador de primera campaña](../marketing/PRIMERA_CAMPANA_OMNISEND.md)
detalla condiciones, contenido y comprobaciones.

## Actualizaciones que corresponde archivar a Claude

- Mantener D-006 como propuesta hasta la aprobación/fusión de Jehudy; registrar
  por separado implementación, prueba operativa y aprobación.
- Añadir estos hallazgos al encargo de OpenCode y precisar quién implementa y quién prueba.
- Registrar la revisión de D-002 sin sobrescribir su decisión histórica.
- Vincular `docs/diseno/MARCA_CLICSHOP.md` y el logo disponible localmente; el recurso
  existe aunque su carga en Omnisend siga pendiente.
- Resolver las frases históricas de D-003/D-004 que aún dicen «pendiente PR #1» o
  «escritura pendiente» mediante una entrada de seguimiento, conservando la historia.
- No dar por probada la lectura del conector de ChatGPT por una lectura realizada
  en Codex: son entornos diferentes.
