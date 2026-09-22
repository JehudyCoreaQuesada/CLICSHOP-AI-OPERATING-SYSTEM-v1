# Continuidad de proyectos IA — Clicshop / Jehudy

Fuente única de verdad de los proyectos que Jehudy desarrolla con ChatGPT y Claude.
Ninguna IA recuerda por sí sola lo que hizo la otra: **lo que no está aquí, no existe para el equipo.**

## Cómo se usa (Jehudy)

1. **Iniciar o retomar trabajo con Claude:** escribe «retomemos P-00X» (o «nuevo proyecto: …»). Claude lee este repositorio antes de actuar.
2. **Llevar contexto a ChatGPT:** ChatGPT lee este repositorio con su conector de GitHub (solo lectura). Si tu plan no lo permite en el chat, pega el bloque `RELEVO` que Claude entrega al cerrar cada sesión.
3. **Traer un encargo de ChatGPT a Claude:** pídele a ChatGPT el encargo en formato `ENCARGO` (ver `plantillas/ENCARGO.md`) y pégalo en Claude. Claude lo revisa antes de ejecutar y lo archiva aquí.
4. **Consultar el estado:** abre `INDICE.md` y luego `proyectos/P-00X-…/ESTADO.md`.

## Estructura

| Ruta | Contenido | Quién escribe |
|---|---|---|
| `PROTOCOLO.md` | Reglas de coordinación entre IA | Claude (con aprobación de Jehudy) |
| `INDICE.md` | Registro de todos los proyectos | Claude |
| `proyectos/P-XXX-nombre/ESTADO.md` | Estado vigente del proyecto (se sobrescribe) | Claude |
| `proyectos/P-XXX-nombre/DECISIONES.md` | Bitácora de decisiones (solo se agrega) | Claude |
| `proyectos/P-XXX-nombre/encargos/` | Encargos recibidos de ChatGPT y su revisión | Claude |
| `plantillas/` | Formatos oficiales | Claude |
| `instrucciones/` | Instrucciones para configurar cada IA | Claude |

El historial de commits es la bitácora completa: cada cambio queda fechado y es reversible.
