# Info Costa Rica — Arquitectura del proyecto

> Estado: v0.1 (2026-10-06). Documento maestro. Fuente de verdad de las decisiones de producto.
> Convención: **[Decisión]** = confirmada por el responsable del proyecto · **[Supuesto]** = razonable pero sin confirmar · **[Verificar]** = dato externo (legal/técnico) que debe comprobarse antes de usarse.

Documento base de misión y principios: `Descripcion de Info Costa Rica.txt` (no se modifica; este documento lo desarrolla).

---

## 1. Qué es

Plataforma que conecta comercios, profesionales y servicios de Costa Rica con las personas que los necesitan. Combina cuatro capas en un solo lugar:

1. **Directorio** (visibilidad): perfil público del comercio, buscable.
2. **Reservas y compra** (conversión): el cliente final reserva o contrata desde el directorio.
3. **CRM y atención** (relación): consultas, clientes, oportunidades y seguimiento del comercio.
4. **Confianza** (reputación): reseñas verificadas y moderadas.

Promesa: *que ningún buen negocio quede invisible por ser pequeño.*

## 2. Decisiones tomadas

| # | Tema | Decisión |
|---|------|----------|
| D1 | Quién paga la plataforma | **[Decisión]** El **comercio** paga planes de suscripción. El cliente final que busca información **no paga**. |
| D2 | Quién paga una reserva/servicio | **[Decisión]** Si un cliente hace una reserva por el directorio, **el cliente paga** el servicio o la reserva solicitada. |
| D3 | Principio 5 (competencia justa) y publicidad | **[Decisión]** Se aplica solo a empresas que **colaboran dando publicidad** a la plataforma: reciben un **beneficio mínimo** por ayudar a crecerla. |
| D4 | Alcance | **[Decisión]** Se desarrolla **todo a la vez**, mediante **agentes .md expertos por campo** que permitan ejecutar la plataforma completa. |
| D5 | Dimensión internacional | **[Decisión]** Se conecta con el mundo; el beneficio es de dimensión internacional. |
| D6 | Reseñas | **[Decisión]** Se **verifican y moderan**. La confianza y la reputación son el diferenciador excepcional del directorio. |

## 3. Actores

- **Cliente final**: busca, consulta, reserva, paga, reseña. Gratis para buscar.
- **Comercio / profesional**: tiene perfil, paga suscripción, recibe consultas y reservas, gestiona clientes.
- **Comercio colaborador (publicidad)**: comercio que difunde la plataforma y recibe un beneficio mínimo (ver agente `publicidad`).
- **Equipo Info Costa Rica**: administración, moderación, soporte.

## 4. Módulos y agente responsable

| Módulo | Agente experto | Archivo |
|--------|----------------|---------|
| Perfiles, categorías, búsqueda | Directorio | `agentes/directorio.md` |
| Reservas, cobro al cliente, liquidación | Reservas y pagos | `agentes/reservas-pagos.md` |
| Consultas, clientes, seguimiento, atención | CRM y atención | `agentes/crm-atencion.md` |
| Reseñas verificadas, moderación, anti-fraude | Confianza y moderación | `agentes/confianza-moderacion.md` |
| Programa de colaboradores y beneficios | Publicidad y colaboradores | `agentes/publicidad-colaboradores.md` |
| Planes, cobro a comercios, facturación | Suscripciones y facturación | `agentes/suscripciones-facturacion.md` |
| Idiomas, monedas, pagos y alcance internacional | Internacionalización | `agentes/internacionalizacion.md` |
| Datos, infraestructura, seguridad, privacidad | Plataforma técnica | `agentes/plataforma-tecnica.md` |

Índice y reglas de coordinación: `agentes/AGENTS.md`.

## 5. Flujos de dinero (dos distintos, no mezclar)

1. **Comercio → Info Costa Rica**: suscripción (D1). Ingreso recurrente de la plataforma.
2. **Cliente final → Comercio (vía plataforma)**: pago de reserva o servicio (D2). Es dinero **del comercio** que la plataforma intermedia.

**[Supuesto]** La plataforma puede cobrar además una comisión por reserva; no está decidido. Si no la cobra, el único ingreso es la suscripción. Pendiente de decidir (ver sección 8).

## 6. Reglas transversales (aplican a todos los agentes)

- **R1 — Reputación no comprable.** Ningún pago, plan ni beneficio de publicidad puede alterar reseñas, calificaciones o su visibilidad. Es la regla que protege el diferenciador (D6).
- **R2 — Beneficio mínimo de colaboradores acotado.** El beneficio de D3 se define con una lista cerrada de beneficios permitidos y una lista de beneficios prohibidos (ver agente `publicidad-colaboradores`). Debe estar publicado de forma transparente.
- **R3 — El comercio controla su información.** Puede ver, corregir y exportar sus datos y los de sus clientes (alineado con la misión: "control sobre su información").
- **R4 — Un solo modelo de datos.** Todos los agentes usan las mismas entidades (sección 7). Ningún agente crea su propia versión de "comercio" o "cliente".
- **R5 — Sin conocimiento técnico exigido al comercio.** Toda función se evalúa contra: ¿la usa un dueño de negocio sin ayuda?
- **R6 — Nada se inventa.** Ningún agente fabrica datos, reseñas, cifras ni capacidades. Lo no verificado se marca [Supuesto] o [Verificar].

## 7. Modelo de datos compartido (entidades núcleo)

`Comercio` · `Usuario` (cliente final) · `Servicio/Oferta` · `Disponibilidad` · `Consulta` · `Reserva` · `Pago` · `Reseña` · `Caso de moderación` · `Plan/Suscripción` · `Factura` · `Colaborador` · `Beneficio` · `Idioma/Moneda`

Relaciones clave:
- Una `Reseña` solo puede nacer de una `Reserva` o `Consulta` real (verificación, D6).
- Un `Pago` de reserva pertenece a una `Reserva` y se liquida al `Comercio`.
- Una `Suscripción` pertenece a un `Comercio` y condiciona qué funciones puede usar, **nunca** su reputación (R1).

El detalle de campos lo define `agentes/plataforma-tecnica.md`.

## 8. Riesgos y decisiones pendientes

Los puntos de arriba están decididos; estos **aún no**, y varios bloquean el desarrollo "todo a la vez":

1. **Intermediación de pagos (D2).** Que el cliente pague por la plataforma implica decidir: ¿la plataforma recibe el dinero y liquida al comercio, o el pago va directo al comercio? Lo primero acarrea obligaciones regulatorias, fiscales (IVA), reembolsos y disputas. **[Verificar]** con asesoría legal/contable en Costa Rica.
2. **Comisión por reserva: sí/no.** Cambia el modelo de ingresos y el diseño de pagos.
3. **Todo a la vez (D4).** Es una decisión válida, pero los módulos tienen dependencias reales: reseñas verificadas necesitan reservas; reservas necesitan pagos; todo necesita el modelo de datos. Los agentes pueden trabajar en paralelo **solo si** el modelo de datos y los contratos entre agentes se fijan primero (sección 7 y `AGENTS.md`). Riesgo: cada agente produce piezas incompatibles.
4. **Moderación real (D6).** Verificar y moderar reseñas es trabajo humano continuo, no solo software. Definir quién modera, con qué criterios y con qué tiempos.
5. **Dimensión internacional (D5).** Hay que precisar cuál es el beneficio internacional concreto (¿visitantes extranjeros que encuentran comercios locales? ¿comercios que exportan? ¿costarricenses en el exterior?). Sin esa precisión, el agente de internacionalización no puede priorizar.
6. **Publicidad (D3).** Falta definir qué es "beneficio mínimo" en términos concretos y cómo se mide la colaboración.
7. **Cumplimiento legal en Costa Rica.** **[Verificar]** protección de datos personales (Ley 8968), facturación electrónica ante Hacienda, términos y condiciones, defensa del consumidor.

## 9. Fases sugeridas (para ordenar el trabajo en paralelo)

Aunque se construya todo a la vez, conviene ordenar la **entrega** en tres capas:

- **Capa 0 — Fundamentos (primero y compartido):** modelo de datos, identidad/usuarios, seguridad y privacidad, reglas R1–R6.
- **Capa 1 — Núcleo de valor:** directorio, consultas/CRM, suscripciones.
- **Capa 2 — Transacción y confianza:** reservas y pagos, reseñas verificadas, moderación, publicidad/colaboradores, internacionalización.

**[Supuesto]** Esta ordenación es una propuesta; no es una decisión confirmada.

## 10. Registro de cambios

- 2026-10-06 — v0.1: creación; se incorporan decisiones D1–D6.
