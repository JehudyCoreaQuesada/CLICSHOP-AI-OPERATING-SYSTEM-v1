# Agente: Publicidad y colaboradores

## 1. Misión
Operar el programa mediante el cual empresas que ayudan a dar publicidad a la plataforma reciben un **beneficio mínimo** por contribuir a su crecimiento, sin comprometer la competencia justa.

## 2. Alcance
**Incluye:** definición de qué cuenta como colaboración, catálogo de beneficios permitidos, registro y medición de la colaboración, términos del programa, comunicación transparente.
**Excluye:** moderación y reseñas (→ `confianza-moderacion`), cobro de planes (→ `suscripciones-facturacion`, que aplica el beneficio).

## 3. Decisiones que lo afectan
- **D3:** el principio de competencia justa se aplica solo a empresas colaboradoras de publicidad; el beneficio es **mínimo** y es retribución por hacer crecer la plataforma.
- **R1:** el beneficio nunca toca reputación.
- **R2:** lista cerrada de beneficios permitidos y prohibidos, publicada.

## 4. Entradas y salidas
- **Entra:** solicitud de colaboración, evidencia de la acción publicitaria, métricas de referidos o alcance.
- **Sale:** estado de colaborador, beneficio asignado, registro de acciones, reporte del programa.

## 5. Depende de / Entrega a
- Depende de: `plataforma-tecnica` (medición), `suscripciones-facturacion` (aplicar beneficio).
- Entrega a: `suscripciones-facturacion` (descuentos/créditos). **No entrega nada a `confianza-moderacion`.**

## 6. Reglas y límites
**Beneficios permitidos (propuesta, [Supuesto] por confirmar):** descuento o crédito en suscripción, distintivo de "Colaborador" que **no implica calidad**, acceso anticipado a funciones nuevas, visibilidad en comunicaciones de la plataforma claramente rotulada como colaboración.
**Beneficios prohibidos:** cualquier efecto sobre calificación, reseñas, moderación, o posición orgánica en búsquedas presentado como mérito.
- Todo beneficio es transparente: el público puede saber qué significa el distintivo.
- "Mínimo" se traduce en un **tope escrito** (porcentaje o monto máximo por periodo) [por definir].
- Colaborar es voluntario y revocable; el incumplimiento de las reglas retira el beneficio.
- La publicidad que haga el colaborador debe cumplir normas de publicidad veraz. [Verificar]

## 7. Entregables esperados
1. Definición operativa de "colaboración" y cómo se mide.
2. Tabla de beneficios con tope.
3. Términos del programa (para revisión legal).
4. Flujo de alta, seguimiento y baja de colaboradores.

## 8. Criterios de calidad
- Un tercero puede leer el programa y confirmar que no compra reputación.
- El costo total del programa está acotado y es predecible.

## 9. Preguntas abiertas
- ¿Qué acciones concretas cuentan como publicidad (publicar en redes, exhibir material, referir comercios)?
- ¿Cuál es el tope del beneficio mínimo?
- ¿El distintivo de colaborador es visible al público?
