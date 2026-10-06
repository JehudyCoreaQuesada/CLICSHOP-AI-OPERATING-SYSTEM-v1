# Índice de agentes expertos — Info Costa Rica

> Cada agente es un archivo `.md` con su campo, responsabilidades, entradas/salidas, reglas y criterios de calidad. Se usan como instrucciones de rol: quien ejecute un campo carga su archivo más `arquitectura/ARQUITECTURA.md`.

## Agentes

| Agente | Archivo | Campo |
|--------|---------|-------|
| Directorio | `directorio.md` | Perfiles, categorías, búsqueda y descubrimiento |
| Reservas y pagos | `reservas-pagos.md` | Reserva, cobro al cliente, liquidación al comercio |
| CRM y atención | `crm-atencion.md` | Consultas, clientes, seguimiento, respuesta oportuna |
| Confianza y moderación | `confianza-moderacion.md` | Reseñas verificadas, moderación, anti-fraude |
| Publicidad y colaboradores | `publicidad-colaboradores.md` | Programa de colaboración y beneficio mínimo |
| Suscripciones y facturación | `suscripciones-facturacion.md` | Planes, cobro a comercios, facturación |
| Internacionalización | `internacionalizacion.md` | Idiomas, monedas, alcance internacional |
| Plataforma técnica | `plataforma-tecnica.md` | Modelo de datos, infraestructura, seguridad, privacidad |

## Reglas de coordinación

1. **Fuente de verdad:** `arquitectura/ARQUITECTURA.md`. Si un agente necesita contradecirlo, no lo hace: propone un cambio y lo registra en "Preguntas abiertas".
2. **Modelo de datos único:** las entidades las define `plataforma-tecnica.md`. Ningún agente inventa entidades paralelas.
3. **Contratos entre agentes:** cuando un agente depende de otro, lo declara en su sección "Depende de / Entrega a". Un cambio en una interfaz se avisa a los agentes afectados.
4. **Reglas R1–R6** del documento maestro aplican a todos. R1 (reputación no comprable) prevalece sobre cualquier otra consideración comercial.
5. **Distinguir hechos, inferencias y supuestos.** No inventar datos, cifras, normas legales ni capacidades de terceros. Lo no verificado se marca [Supuesto] o [Verificar].
6. **Acciones con consecuencias externas** (gasto, publicación, compromisos legales o comerciales, borrado de datos) requieren autorización explícita del responsable del proyecto.

## Mapa de dependencias

```
plataforma-tecnica  ──► (todos)
directorio ──► crm-atencion ──► reservas-pagos ──► confianza-moderacion
suscripciones-facturacion ──► directorio, crm-atencion, reservas-pagos (acceso por plan)
publicidad-colaboradores ──► suscripciones-facturacion (beneficios)  ·  ✖ nunca ► confianza-moderacion (R1)
internacionalizacion ──► directorio, reservas-pagos, suscripciones-facturacion
```

## Formato estándar de cada agente

1. Misión del agente
2. Alcance (incluye / excluye)
3. Decisiones ya tomadas que lo afectan
4. Entradas y salidas
5. Depende de / Entrega a
6. Reglas y límites
7. Entregables esperados
8. Criterios de calidad
9. Preguntas abiertas

## Preguntas abiertas globales

- ¿Hay comisión por reserva además de la suscripción? (ver ARQUITECTURA §8)
- ¿La plataforma recibe y liquida el dinero de las reservas, o el pago va directo al comercio?
- ¿Cuál es el beneficio internacional concreto prioritario?
