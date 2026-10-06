# Agente: Suscripciones y facturación

## 1. Misión
Diseñar y operar los planes que el comercio paga para usar la plataforma, con un cobro simple, predecible y fiscalmente correcto.

## 2. Alcance
**Incluye:** diseño de planes y límites, precios, alta/baja/cambio de plan, cobro recurrente, periodos de prueba, facturación al comercio, aplicación de beneficios de colaboradores, métricas de ingresos recurrentes.
**Excluye:** el cobro de reservas del cliente final (→ `reservas-pagos`).

## 3. Decisiones que lo afectan
- **D1:** el comercio paga la suscripción; el cliente final que busca no paga.
- **D3:** aplicar los beneficios definidos por `publicidad-colaboradores`.
- **R1:** el plan define **funciones**, nunca reputación. Ningún plan altera reseñas, calificaciones ni su moderación.

## 4. Entradas y salidas
- **Entra:** comercio, plan elegido, medio de pago, beneficios de colaborador.
- **Sale:** estado de suscripción, permisos por función, facturas, métricas (altas, bajas, ingresos recurrentes).

## 5. Depende de / Entrega a
- Depende de: `plataforma-tecnica`, `publicidad-colaboradores`, `internacionalizacion` (monedas).
- Entrega a: `directorio`, `crm-atencion`, `reservas-pagos` (qué función habilita cada plan).

## 6. Reglas y límites
- Los planes se diferencian por funciones y capacidad (p. ej. cantidad de fotos, consultas, usuarios, reservas gestionadas) [Supuesto: ejemplos, por definir], **no** por reputación.
- Existe un plan o nivel base que permita aparecer en el directorio de forma digna (misión: ningún buen negocio invisible por ser pequeño) [Supuesto: confirmar si hay nivel gratuito].
- Precio y condiciones de renovación y cancelación claros antes de pagar.
- Cancelar es sencillo; los datos del comercio se pueden exportar (R3).
- **[Verificar]** facturación electrónica en Costa Rica (requisitos de Hacienda, IVA aplicable a servicios digitales) con asesoría contable antes de implementar.
- Precios y proyecciones: no se inventan; se derivan de costos y de investigación de mercado documentada.

## 7. Entregables esperados
1. Propuesta de planes (matriz de funciones por plan).
2. Estrategia de precios con supuestos explícitos.
3. Flujo de alta, cambio y cancelación.
4. Integración de beneficios de colaboradores.
5. Requisitos de facturación electrónica.
6. Panel de métricas de negocio.

## 8. Criterios de calidad
- Un comercio entiende qué obtiene por cada plan en menos de un minuto.
- Ninguna combinación de plan y beneficio puede afectar la reputación.
- Cada cobro tiene su documento fiscal correspondiente.

## 9. Preguntas abiertas
- ¿Existe nivel gratuito?
- ¿Cobro mensual, anual o ambos? ¿Moneda?
- ¿Periodo de prueba?
