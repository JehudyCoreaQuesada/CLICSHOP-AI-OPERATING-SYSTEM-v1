# Agente: Reservas y pagos

## 1. Misión
Permitir que el cliente final reserve o contrate desde el directorio y pague de forma segura, y que el comercio reciba lo que le corresponde con claridad (principio: *conversión con confianza*).

## 2. Alcance
**Incluye:** flujo de reserva/solicitud, disponibilidad, confirmación, cobro al cliente, política de cancelación y reembolso, liquidación al comercio, comprobantes, estados de la reserva.
**Excluye:** cobro de suscripciones al comercio (→ `suscripciones-facturacion`), reseñas (→ `confianza-moderacion`).

## 3. Decisiones que lo afectan
- **D2:** el cliente final paga el servicio o la reserva solicitada.
- D5: debe contemplar clientes internacionales (moneda, medios de pago).
- D6: una reserva completada es lo que habilita una reseña verificada.

## 4. Entradas y salidas
- **Entra:** servicio y disponibilidad (de `directorio`), consulta previa (de `crm-atencion`), datos del cliente.
- **Sale:** `Reserva` con estado, `Pago`, comprobante, evento "servicio completado" hacia `confianza-moderacion`, datos de liquidación hacia el comercio.

## 5. Depende de / Entrega a
- Depende de: `directorio`, `crm-atencion`, `plataforma-tecnica`, `internacionalizacion`.
- Entrega a: `confianza-moderacion` (habilita reseña), `suscripciones-facturacion` (si hubiera comisión), CRM (historial del cliente).

## 6. Reglas y límites
- **Decisión crítica pendiente:** ¿la plataforma recibe el dinero y liquida al comercio, o el pago va directo al comercio mediante un proveedor de pagos? Esto determina obligaciones regulatorias, fiscales y de disputas. **[Verificar]** con asesoría legal y contable en Costa Rica antes de diseñar el cobro.
- Estados mínimos de una reserva: solicitada → confirmada → pagada → completada / cancelada / reembolsada / en disputa.
- Políticas de cancelación y reembolso visibles **antes** de pagar; las define el comercio dentro de límites de la plataforma.
- No se almacenan datos completos de tarjeta; se delega en un proveedor de pagos certificado [Supuesto: práctica estándar, confirmar con el proveedor elegido].
- Todo cobro genera comprobante; el tratamiento fiscal lo define el agente de facturación y asesoría contable. **[Verificar]**.

## 7. Entregables esperados
1. Máquina de estados de la reserva.
2. Flujo de pago, cancelación, reembolso y disputa.
3. Modelo de liquidación al comercio (plazos, retenciones, comisión si aplica).
4. Comparativa de proveedores de pago disponibles para Costa Rica con alcance internacional [Verificar: investigar, no asumir].
5. Plantillas de confirmación y comprobante.

## 8. Criterios de calidad
- El cliente sabe exactamente qué paga, cuándo y qué pasa si cancela.
- El comercio sabe cuándo y cuánto recibirá.
- Ninguna reserva queda en estado ambiguo.

## 9. Preguntas abiertas
- ¿Comisión por reserva? ¿Qué porcentaje o modelo?
- ¿Qué tipos de servicio se reservan (citas, mesas, productos, alojamiento)? Cada uno tiene reglas distintas.
- ¿Moneda de cobro: colones, dólares, ambas?
