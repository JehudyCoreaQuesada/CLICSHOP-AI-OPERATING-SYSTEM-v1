# P-002 · Bitácora de decisiones

Solo se agregan entradas. Una decisión no se borra: se marca como reemplazada.

---

## D-001 · Paleta del libro de marca nuevo
- **Fecha:** 2026-09-24
- **Estado:** Vigente
- **Decidió:** Jehudy (la referencia `MARCA_CLICSHOP.md` indica que el libro prevalece); aplicada por Claude
- **Contexto:** un brand book anterior en Word usaba `#EA591B` / `#2953A0`; el libro de marca nuevo indica `#EE601E` / `#1A47B1`.
- **Decisión:** usar la paleta del libro nuevo: naranja `#EE601E` (acción), hover `#FF8A3D`, azul `#1A47B1`, azul secundario `#4F77B5`, bordes `#D1D8E0`, texto `#333333`, fondo `#F8F9FB`, blanco `#FFFFFF`.
- **Consecuencias:** el Word anterior queda desactualizado en colores.

## D-002 · Asignación de colores en Omnisend
- **Fecha:** 2026-09-24
- **Estado:** Vigente (supuesto reversible de Claude)
- **Contexto:** Omnisend solo tiene 3 colores y usa «Dark» también para el texto de párrafos.
- **Decisión:** Accent `#EE601E`, Dark `#1A47B1`, Light `#F8F9FB`. Tipografías: Poppins (títulos) y Open Sans (cuerpo), combinación elegida entre las alternativas del libro, no definitiva.
- **Alternativa descartada:** Dark `#333333` (fiel al texto del libro, pero la barra superior de los correos quedaría gris en vez de azul).

## D-003 · El SPF se edita, nunca se duplica
- **Fecha:** 2026-09-24
- **Estado:** Vigente
- **Decidió:** Jehudy autorizó configurar los DNS; Claude definió el método
- **Contexto:** Omnisend pide un TXT `v=spf1 include:mailgun.org ~all`, pero el dominio ya tiene un SPF que autoriza a Google Workspace. Dos SPF producen error y, con DMARC en cuarentena, afectarían la entrega del correo corporativo.
- **Decisión:** editar el SPF existente para incluir ambos: ver `DNS.md`. Omnisend propone el mismo valor combinado.
- **Alternativa descartada:** la conexión automática de Omnisend con GoDaddy (Entri): requiere dar a un tercero permiso sobre los DNS y no se pudo comprobar que combine el SPF.

## D-004 · Remitente temporal con alias genérico
- **Fecha:** 2026-09-24
- **Estado:** Vigente
- **Decidió:** Jehudy
- **Decisión:** usar por ahora un alias genérico del dominio como remitente, hasta crear el alias definitivo de marketing. Las direcciones no se registran en este repositorio.

## D-005 · Plantilla formal en HTML propio
- **Fecha:** 2026-09-24
- **Estado:** Vigente
- **Decidió:** Jehudy pidió una plantilla formal y profesional; Claude definió el formato
- **Decisión:** plantilla HTML con tablas y estilos en línea, cargada en Omnisend como «HTML template» y guardada como plantilla. El encabezado usa el nombre en texto porque Omnisend aún no tiene el logo y la referencia de marca prohíbe reconstruirlo.
- **Consecuencias:** cuando se suba el logo, sustituir el nombre del encabezado por la imagen.
