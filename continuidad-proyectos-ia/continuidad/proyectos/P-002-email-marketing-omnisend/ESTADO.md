# P-002 · Email marketing con Omnisend — ESTADO

**Actualizado:** 2026-09-24 · **Por:** Claude · **Fase:** Configuración

## Objetivo
Enviar comunicaciones por correo desde la tienda Shopify de Clicshop con Omnisend, con la identidad del libro de marca y desde el dominio propio `clicshopcr.com`.

## Criterio de éxito
1. Omnisend usa la paleta y tipografías del libro de marca y el logo oficial.
2. Existe una plantilla formal reutilizable con la marca.
3. El dominio `clicshopcr.com` está verificado en Omnisend (SPF + DKIM) sin afectar el correo de Google Workspace.
4. Las campañas y automatizaciones salen desde un remitente verificado del dominio propio.

## Contexto verificado
- Omnisend instalado en Shopify, plan gratuito (500 correos/mes).
- DNS del dominio administrado en GoDaddy; correo en Google Workspace; sitio en Shopify; DMARC ya activo en modo cuarentena.
- Fuente de marca: `MARCA_CLICSHOP.md` y la lámina del libro de marca en Google Drive (carpeta «imagen de marca»).

## Situación actual
- **Brand assets en Omnisend:** Accent `#EE601E`, Dark `#1A47B1`, Light `#F8F9FB`; títulos Poppins, párrafos Open Sans. **Verificado** (recarga de la página con valores persistidos).
- **Logo en Omnisend:** el importado desde la tienda es una imagen vacía. **Pendiente** — Jehudy debe subir `Logo_Clic_Shop Oficial Version.png`.
- **Redes sociales en Omnisend:** importadas de la tienda (Facebook, Instagram). **Sin verificar** que sean las cuentas correctas.
- **Plantilla «Clicshop - Comunicado formal»:** guardada en Omnisend (Saved templates) y copia en `entregables/`. **Implementado** (Omnisend confirmó guardado y actualización; revisada en escritorio y móvil).
- **Borrador de campaña** «PLANTILLA - Comunicado formal Clicshop», sin destinatarios. **Implementado**; no se envió nada.
- **Dominio de envío** `clicshopcr.com` agregado en Omnisend. **En verificación** — faltan los registros DNS.
- **DNS en GoDaddy:** cambio de SPF preparado; GoDaddy exige verificación de identidad por SMS que solo Jehudy puede completar. **Sin verificar** si quedó guardado; registro DKIM **pendiente**. Ver `DNS.md`.
- **Remitente:** se usará temporalmente un alias genérico del dominio (ver D-004). Agregado en Omnisend, **pendiente** de confirmación por correo y de que el alias exista en Google Workspace. Las direcciones concretas no se guardan en este repositorio: ver Omnisend → Store settings → Email.
- **App embed de Omnisend en el tema de Shopify:** estado **sin verificar** (Omnisend aún indica que está apagado).

## Decisiones vigentes
- D-001: la paleta del libro de marca nuevo prevalece sobre la extracción anterior.
- D-002: asignación de colores a los 3 espacios de Omnisend.
- D-003: el SPF se edita, nunca se duplica.
- D-004: remitente temporal con alias genérico del dominio.
- D-005: plantilla formal en HTML propio, sin reconstruir el logo.

## Pendientes
- [ ] Completar la verificación SMS en GoDaddy y confirmar que el SPF editado se guardó — Jehudy
- [ ] Crear el registro DKIM `mailo._domainkey` (valor en Omnisend → Domains) — Claude, tras la verificación
- [ ] Comprobar en DNS público: un solo SPF y DKIM idéntico al de Omnisend — Claude
- [ ] Cerrar la verificación del dominio en Omnisend y asignarlo a campañas y automatizaciones — Claude
- [ ] Crear el alias en Google Workspace y confirmar el correo de verificación de Omnisend — Jehudy
- [ ] Subir el logo oficial en Omnisend → Brand assets — Jehudy
- [ ] Revisar que el app embed de Omnisend esté activo y guardado en el tema — Jehudy
- [ ] Confirmar las URL de redes sociales — Jehudy
- [ ] Decidir si se elimina el remitente anterior no usado y el borrador de campaña — Jehudy

## Bloqueos
- Verificación de identidad en GoDaddy (solo la puede completar Jehudy).

## Riesgos
- **Dos registros SPF** invalidarían el SPF del dominio y, con DMARC en cuarentena, afectarían el correo de Google Workspace. Mitigación: D-003.
- **Contraste del botón** (texto blanco sobre `#EE601E`, ≈3,3:1) por debajo de 4,5:1 recomendado para texto normal. Mitigación opcional: texto más grande o naranja más oscuro.
- **Límite del plan gratuito** (500 correos/mes).

## Siguiente acción
**Quién:** Jehudy · **Qué:** completar la verificación SMS en GoDaddy y avisar a Claude para crear el DKIM y cerrar la verificación.

## Entregables y enlaces
- Plantilla: `entregables/plantilla-comunicado-formal.html`
- Registros DNS: `DNS.md`
