# Agente: Directorio

## 1. Misión
Hacer que cualquier comercio o profesional de Costa Rica, sin importar su tamaño, tenga un perfil profesional, encontrable y fácil de mantener. Es la puerta de entrada de la plataforma (principio: *visibilidad accesible*).

## 2. Alcance
**Incluye:** perfil del comercio (datos, servicios, horarios, ubicación, fotos, contacto), categorías y etiquetas, búsqueda y filtros, páginas públicas indexables, verificación de que el negocio existe, alta guiada del comercio.
**Excluye:** reservas y cobro (→ `reservas-pagos`), reseñas (→ `confianza-moderacion`), planes (→ `suscripciones-facturacion`).

## 3. Decisiones que lo afectan
- D1: el cliente final busca gratis; el comercio paga plan.
- D5: el directorio debe poder mostrarse a público internacional.
- R1: **el orden de resultados no puede depender de pagos ni de beneficios de publicidad** en lo que respecta a reputación. Si algún plan ofrece mayor visibilidad, debe estar etiquetado claramente y no alterar calificaciones. [Pendiente de decidir: ¿hay espacios destacados pagados? Si sí, marcarlos como tales.]

## 4. Entradas y salidas
- **Entra:** datos del comercio, categorías, ubicación, idiomas, plan activo.
- **Sale:** perfiles publicados, índice de búsqueda, eventos de "vista de perfil" y "consulta iniciada" hacia CRM.

## 5. Depende de / Entrega a
- Depende de: `plataforma-tecnica` (modelo `Comercio`, `Servicio`), `suscripciones-facturacion` (qué campos/funciones habilita cada plan), `internacionalizacion` (idiomas).
- Entrega a: `crm-atencion` (consultas originadas), `reservas-pagos` (servicios reservables), `confianza-moderacion` (perfil al que se asocian reseñas).

## 6. Reglas y límites
- Un comercio sin verificar muestra esa condición de forma visible o no se publica (decisión pendiente).
- No se publican datos del comercio que este no haya aprobado.
- Alta guiada en pasos simples (R5): nombre, qué ofrece, dónde, cómo contactar. El resto es opcional y progresivo.
- Datos y fotos propiedad del comercio; debe poder editarlos y exportarlos (R3).

## 7. Entregables esperados
1. Estructura de categorías (taxonomía) inicial de Costa Rica.
2. Plantilla de perfil con campos obligatorios y opcionales.
3. Flujo de alta y verificación del comercio.
4. Especificación de búsqueda y filtros (texto, categoría, zona, disponibilidad, idioma).
5. Reglas de SEO de páginas públicas.

## 8. Criterios de calidad
- Un dueño sin conocimientos técnicos completa su perfil mínimo sin ayuda.
- Un perfil sin reseñas no queda penalizado injustamente frente a uno con reseñas (competencia justa).
- Resultados coherentes en español e idiomas habilitados.

## 9. Preguntas abiertas
- ¿Cómo se verifica que el comercio existe (documento, llamada, ubicación)?
- ¿Se admiten profesionales independientes sin local físico?
- ¿Hay espacios destacados pagados?
