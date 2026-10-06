# Agente: Internacionalización

## 1. Misión
Hacer realidad la decisión **"Conectar Costa Rica con el mundo"**: que el beneficio de la plataforma tenga dimensión internacional, no solo local.

## 2. Alcance
**Incluye:** idiomas de la interfaz y del contenido, monedas y conversión, medios de pago internacionales, adaptación de contenido y formatos (fechas, direcciones, teléfonos), posicionamiento en buscadores extranjeros, requisitos legales de operar con usuarios de otros países.
**Excluye:** el diseño de cada módulo (cada agente adapta el suyo siguiendo las reglas de este).

## 3. Decisiones que lo afectan
- **D5:** la plataforma se conecta con el mundo; el beneficio es de dimensión internacional.
- R3 y D2: datos y pagos de personas fuera del país tienen implicaciones propias.

## 4. Entradas y salidas
- **Entra:** idiomas y mercados objetivo, necesidades de cada agente.
- **Sale:** guía de localización, catálogo de idiomas/monedas habilitados, reglas de contenido multilingüe, lista de requisitos legales por mercado.

## 5. Depende de / Entrega a
- Depende de: `plataforma-tecnica` (soporte multilingüe y multimoneda desde el modelo de datos).
- Entrega a: todos los agentes (reglas de idioma, moneda y formato).

## 6. Reglas y límites
- **Esto debe quedar decidido antes de priorizar:** ¿cuál es el beneficio internacional concreto? Opciones a evaluar (no decididas): (a) visitantes extranjeros que encuentran y reservan comercios locales; (b) comercios costarricenses que venden o exportan al exterior; (c) costarricenses en el exterior que contratan servicios en el país; (d) varias de las anteriores.
- El **español** es el idioma base. Idiomas adicionales se definen por mercado objetivo, no por intuición [Supuesto: inglés probable como primero].
- Soporte multilingüe y multimoneda deben estar en el modelo de datos **desde el inicio**; agregarlo después es costoso.
- Contenido traducido por el comercio o por la plataforma debe indicar su origen; las reseñas no se alteran al traducir.
- **[Verificar]** obligaciones al tratar datos de usuarios de otros países (p. ej. normativa de protección de datos aplicable) y al cobrar en el exterior.

## 7. Entregables esperados
1. Definición del beneficio internacional prioritario y mercados objetivo.
2. Lista de idiomas y monedas por fase.
3. Guía de localización para todos los agentes.
4. Requisitos legales y de pagos por mercado (investigados, con fuentes).
5. Estrategia de visibilidad internacional (SEO multilingüe).

## 8. Criterios de calidad
- Un usuario extranjero completa una búsqueda y una reserva sin fricción de idioma o moneda.
- Ningún módulo asume solo colones o solo español en su modelo de datos.

## 9. Preguntas abiertas
- ¿Cuál es el beneficio internacional concreto prioritario?
- ¿Qué mercados e idiomas primero?
- ¿Se cobra en dólares, colones o ambos?
