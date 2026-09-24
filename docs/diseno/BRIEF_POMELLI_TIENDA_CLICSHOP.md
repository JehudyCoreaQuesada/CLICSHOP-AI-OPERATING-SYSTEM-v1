# Clicshop — referencia de diseño para Pomelli

Proyecto: CLICSHOP AI OPERATING SYSTEM v1 · 23 de septiembre de 2026.

## Objetivo y alcance

Diseñar una tienda Clicshop clara, confiable y fácil de comprar desde el celular.
Las cinco capturas proporcionadas por Jehudy sirven como referencia de organización
comercial. Este documento define una propuesta de diseño para la tienda pública;
no es una interfaz interna para administrar agentes de inteligencia artificial.

La identidad aprobada está en [MARCA_CLICSHOP.md](MARCA_CLICSHOP.md). Las decisiones
de composición, medidas y tipografía propuestas aquí son recomendaciones de diseño;
no alteran el libro de marca ni constituyen una implementación publicada.

## Qué tomar de las referencias

| Captura | Patrón útil | Adaptación para Clicshop |
|---|---|---|
| [01 · Cabecera y portada](referencias/01-cabecera-y-portada.png) | Búsqueda protagonista, navegación por categorías y una promoción principal | Cabecera blanca, identidad azul y naranja; portada con un único mensaje y una acción |
| [02 · Categorías y productos](referencias/02-categorias-y-productos.png) | Categorías visuales y tarjetas de producto comparables | Fotografías uniformes, nombres legibles, precios en colones y disponibilidad real |
| [03 · Composición promocional](referencias/03-composicion-promocional.png) | Un bloque grande acompañado por dos menores | Colecciones destacadas con jerarquía clara y piezas distintas para móvil |
| [04 · Secciones de catálogo](referencias/04-secciones-de-catalogo.png) | Alternancia de productos, campañas y marcas | Menos secciones, mejor seleccionadas; mostrar solo categorías y marcas del catálogo confirmado |
| [05 · Confianza y pie](referencias/05-confianza-y-pie.png) | Opiniones, suscripción, ayuda y enlaces de servicio | Contacto y políticas reales; opiniones solo cuando existan reseñas verificables |

Crear composiciones originales. No reutilizar el logotipo, la mascota, las fotos,
las piezas promocionales ni los textos de Unimart como materiales de Clicshop.
El amarillo, cian y rojo de las capturas no sustituyen los colores de Clicshop.

## Dirección visual

**Idea rectora:** un catálogo ordenado, con fotografías protagonistas y acciones
de compra fáciles de encontrar. Mucho fondo claro, azul para organizar y naranja
para destacar. Evitar llenar cada sección de promociones que compitan entre sí.

- Logo oficial Clicshopcr, sin redibujarlo, deformarlo ni añadir efectos.
- Nombre comercial: Clicshop Costa Rica.
- Eslogan exacto: **¡Todo al alcance de un Clic!**
- Naranja principal y acción: `#EE601E`; azul principal: `#1A47B1`.
- Blanco: `#FFFFFF`; fondo suave: `#F8F9FB`; texto: `#333333`.
- Azul secundario: `#4F77B5`; bordes: `#D1D8E0`; hover naranja: `#FF8A3D`.
- Tipografía propuesta para la maqueta: Poppins en títulos y Open Sans en cuerpo.
  Es una selección provisional entre las alternativas del libro, pendiente de aprobación.
- Voz amigable, directa, transparente y confiable. Frases cortas en español natural
  para Costa Rica; evitar tecnicismos del proyecto en la tienda.

Propuesta de medidas: ancho máximo de contenido de 1240 px, separaciones de 24 px
en escritorio y 16 px en móvil; secciones separadas entre 32 y 56 px; tarjetas con
radio de 12 px y sombras discretas. Texto base de 16 px. Priorizar consistencia
sobre decoración y evitar letras diminutas para introducir más productos.

El contraste debe comprobarse en cada combinación real. El blanco sobre naranja
`#EE601E` tiene una relación aproximada de 3,32:1: no asumir que sirve para etiquetas
pequeñas. Para esos botones se propone texto negro como neutro funcional, o una
variante azul con texto blanco (aproximadamente 8,14:1). El negro funcional es una
recomendación de interfaz, no un nuevo color oficial del libro.

## Recorrido de la página de inicio

1. **Barra de servicio discreta.** Un mensaje útil y confirmado. Omitirla si no hay
   una ventaja verificable que comunicar; no llenar espacio con promesas.
2. **Cabecera.** Logo, buscador amplio con «¿Qué estás buscando?», cuenta y carrito.
   Categorías debajo, sin una fila interminable de enlaces. Encabezado compacto
   al desplazarse para mantener acceso a búsqueda y carrito.
3. **Portada principal.** Una imagen, un título breve y un botón. Propuesta de
   texto: «¡Todo al alcance de un Clic!» y «Explorá nuestro catálogo»; botón
   «Ver productos». Una imagen original de productos disponibles, con espacio
   reservado para texto. No colocar texto encima de zonas visualmente ocupadas.
4. **Categorías destacadas.** Entre seis y ocho categorías reales con imagen o
   icono consistente. Ferretería, herramientas, hogar o tecnología son ejemplos
   sujetos al catálogo; no presentarlos como inventario confirmado.
5. **Productos destacados.** Primera selección de ocho a doce productos reales.
   No llamar «Más vendidos» o «En tendencia» a una selección sin datos que lo respalden.
6. **Bloque de colecciones.** Una pieza grande y dos pequeñas para explorar por
   necesidad. Un titular y una acción por pieza, con productos proporcionados por
   la tienda. No incorporar porcentajes de descuento de las capturas.
7. **Novedades u ofertas vigentes.** Una segunda selección solo si añade valor.
   Mostrar precio anterior, vigencia o descuento únicamente con datos confirmados.
8. **Confianza y asistencia.** Enlaces a envíos, devoluciones y contacto. Reseñas,
   calificaciones, cifras de clientes, sellos y marcas autorizadas requieren respaldo.
9. **Suscripción opcional.** Explicar qué recibirá la persona; pedir solo el dato
   necesario y enlazar la política aplicable. No prometer un cupón inexistente.
10. **Pie de página.** Ayuda, políticas, contacto, redes reales y datos comerciales
    confirmados, organizados en pocos grupos fáciles de recorrer.

## Tarjeta de producto y estados

Imagen con fondo neutro y proporción 1:1, marca cuando corresponda, nombre en hasta
dos líneas y precio claramente visible en colones. Mantener la misma altura visual
entre tarjetas. Incluir una acción principal: «Agregar al carrito» si no hay variantes
pendientes, o «Ver opciones» si la persona debe elegir talla, color u otra variante.

Mostrar como máximo dos etiquetas útiles y verdaderas. Descuentos, entrega rápida,
existencias limitadas y valoraciones no son decoración. No generar contadores ni
escasez ficticia. En ejemplos sin catálogo, usar «Producto de ejemplo» y «Precio
por confirmar», nunca valores que parezcan una oferta publicada.

Preparar los estados normal, foco de teclado, carga, agregado al carrito, agotado
y error. La confirmación de compra o de agregado debe ser visible y comprensible;
no depender únicamente del color. En búsqueda sin resultados, permitir corregir
el término y explorar categorías.

## Comportamiento en móvil

La referencia móvil debe diseñarse expresamente, no ser una captura de escritorio
reducida. Usar cabecera con menú, logo y carrito; buscador en una fila completa.
Mostrar una portada sin texto recortado, dos columnas de productos si conservan
la legibilidad y una sola columna cuando el ancho o el contenido lo requieran.

Las categorías pueden desplazarse horizontalmente con una señal visible de que
hay más; los productos esenciales deben poder explorarse sin depender de un carrusel.
Apilar las tres piezas promocionales. Evitar reproducción automática, ventanas
emergentes al entrar y elementos flotantes que tapen precios o botones. Proponer
controles táctiles de al menos 44 × 44 px y foco de teclado visible.

## Materiales que debe producir una futura propuesta visual

- Página de inicio para escritorio (referencia de 1440 px) y móvil (390 px).
- Muestra de tarjeta de producto y sus estados principales.
- Una portada original y el bloque de tres colecciones, con versiones móviles.
- Guía breve de colores, tipografía, espaciado y botones aplicados.
- Lista explícita de contenido pendiente: catálogo, imágenes, precios, políticas,
  descuentos, reseñas y elección tipográfica final.

Estos son entregables solicitables a una herramienta que los soporte. No se debe
afirmar que Pomelli genera una tienda funcional o sincroniza Shopify por recibir
este documento. Las piezas gráficas son insumos; desarrollo y publicación son pasos
posteriores.

## Revisión antes de aprobar el diseño

- Se reconoce a Clicshop antes de leer el nombre: naranja, azul, logo y voz coherentes.
- El eslogan aparece exactamente como fue aprobado.
- La búsqueda, el precio y la acción principal son fáciles de localizar.
- La composición funciona en móvil sin desbordamientos ni texto cortado.
- No aparecen marcas, ofertas, fotos ni afirmaciones prestadas de las referencias.
- Las imágenes, el texto pequeño y los botones conservan legibilidad y contraste.
- El diseño distingue claramente los datos reales de los ejemplos pendientes.
- Las propuestas tipográficas y medidas se identifican como recomendaciones.

## Uso en Pomelli

Utilizar [PROMPT_POMELLI_CLICSHOP.txt](PROMPT_POMELLI_CLICSHOP.txt) como instrucción
lista para copiar. Las capturas están archivadas en `referencias/` como material
de comparación; no forman parte de las imágenes comerciales de la tienda.
El documento completo permanece en el proyecto aunque el chat de Pomelli se reinicie.
