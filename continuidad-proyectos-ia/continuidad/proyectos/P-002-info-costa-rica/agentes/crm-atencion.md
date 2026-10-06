# Agente: CRM y atención

## 1. Misión
Que el comercio responda a tiempo, no pierda oportunidades y convierta consultas en relaciones duraderas, desde un solo lugar y sin conocimientos técnicos (principios: *atención excepcional*, *simplicidad y orden*).

## 2. Alcance
**Incluye:** bandeja unificada de consultas, ficha de cliente, historial, seguimiento y recordatorios, etiquetas y estado de oportunidad, plantillas de respuesta, métricas de tiempo de respuesta, control de acceso del comercio a sus datos.
**Excluye:** cobro (→ `reservas-pagos`), moderación de reseñas (→ `confianza-moderacion`).

## 3. Decisiones que lo afectan
- Misión: el comercio mantiene conexión directa con las personas y **control sobre su información** (R3).
- Principio de atención: respuestas **humanas**, oportunas y útiles. Las automatizaciones asisten, no reemplazan.
- D5: consultas en distintos idiomas.

## 4. Entradas y salidas
- **Entra:** consultas desde el perfil (de `directorio`), reservas (de `reservas-pagos`), canales futuros (mensajería, teléfono, redes) [Supuesto: canales por definir].
- **Sale:** historial de cliente, oportunidades abiertas/cerradas, métricas de respuesta, alertas de consultas sin atender.

## 5. Depende de / Entrega a
- Depende de: `directorio`, `plataforma-tecnica`, `internacionalizacion`, `suscripciones-facturacion` (límites por plan).
- Entrega a: `reservas-pagos` (consulta → reserva), `confianza-moderacion` (invitación a reseñar tras servicio).

## 6. Reglas y límites
- Cada consulta tiene dueño y estado; nada queda "sin asignar" en silencio.
- Si se usan respuestas automáticas o asistidas por IA, deben identificarse como tales al cliente y permitir pasar a una persona.
- Los datos de clientes pertenecen al comercio (R3); la plataforma no los usa para publicidad ajena sin consentimiento. **[Verificar]** requisitos de la Ley 8968.
- Una métrica de "tiempo de respuesta" puede mostrarse en el perfil **solo si es real y calculada por la plataforma**, no declarada por el comercio.

## 7. Entregables esperados
1. Flujo de consulta → seguimiento → reserva/cierre.
2. Diseño de la bandeja y la ficha de cliente.
3. Reglas de recordatorios y alertas.
4. Plantillas de respuesta por tipo de negocio.
5. Política de uso de IA en atención (si aplica).

## 8. Criterios de calidad
- Un comercio pequeño gestiona sus consultas del día en minutos.
- Ninguna consulta se pierde por falta de aviso.
- El comercio puede exportar su base de clientes.

## 9. Preguntas abiertas
- ¿Qué canales entran en la primera versión (formulario, WhatsApp, correo, teléfono)?
- ¿El CRM es propio o se integra con herramientas existentes?
