# P-002 · Info Costa Rica — Estado

**Actualizado:** 2026-10-06 · **Por:** Claude · **Fase:** Arquitectura (v0.1)

## Qué es

Plataforma que conecta comercios, profesionales y servicios de Costa Rica con las personas que los necesitan: directorio, reservas y pagos, CRM y atención, y reseñas verificadas. Los comercios pagan suscripción; el cliente final busca gratis y, si reserva, paga el servicio.

## Estado de avance (no mezclar)

- **Aprobado** (Jehudy, 2026-10-06): decisiones D-001 a D-006. Ver [DECISIONES.md](DECISIONES.md).
- **Propuesto** (redactado por Claude, pendiente de revisión): arquitectura v0.1, capas de entrega 0–2, regla R1 extendida a todos los planes y lista de beneficios de colaboradores.
- **No iniciado:** modelo de datos, especificaciones por módulo, código, legal y contable.

## Pendientes que bloquean avanzar

1. Cobro de reservas: ¿la plataforma recibe el dinero y liquida al comercio, o el pago va directo al comercio? Verificar con asesoría legal y contable en Costa Rica.
2. ¿Hay comisión por reserva además de la suscripción?
3. ¿Cuál es el beneficio internacional concreto prioritario (visitantes extranjeros, exportación, costarricenses en el exterior)?
4. ¿Quién modera las reseñas y con cuántas horas por semana?
5. ¿Quién construye la plataforma y con qué presupuesto? No hay stack decidido.

## Siguiente acción sugerida

Iniciar el agente `plataforma-tecnica` (Capa 0): modelo de datos y contratos entre módulos, para que los demás agentes trabajen en paralelo sin chocar.

## Orden de lectura (para no omitir nada)

1. [fuente/Descripcion de Info Costa Rica.txt](fuente/Descripcion%20de%20Info%20Costa%20Rica.txt): misión y principios originales (no se modifica).
2. [DECISIONES.md](DECISIONES.md)
3. [arquitectura/ARQUITECTURA.md](arquitectura/ARQUITECTURA.md): documento maestro.
4. [agentes/AGENTS.md](agentes/AGENTS.md): índice y reglas de coordinación.
5. Un archivo por agente en `agentes/`: directorio, reservas-pagos, crm-atencion, confianza-moderacion, publicidad-colaboradores, suscripciones-facturacion, internacionalizacion, plataforma-tecnica.

**Total: 14 archivos** en esta carpeta (este ESTADO, DECISIONES, la fuente, ARQUITECTURA, AGENTS y 8 agentes = 13, más la fila en `INDICE.md`).

## Notas

- Las convenciones [Decisión], [Supuesto] y [Verificar] de los documentos se mantienen. Lo marcado [Verificar] (Ley N.° 8968, facturación electrónica, IVA) no está comprobado.
- Estos documentos también existen en el Project de Claude «Info Costa Rica». Si difieren, gana este repositorio (PROTOCOLO §2).
