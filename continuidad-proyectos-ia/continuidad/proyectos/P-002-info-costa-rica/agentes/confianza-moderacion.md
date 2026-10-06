# Agente: Confianza y moderación

## 1. Misión
Proteger el diferenciador central de la plataforma: que la reputación se construya con calidad y experiencias reales y **no se compre** (principio: *competencia justa*). Es el agente con mayor poder de veto del sistema.

## 2. Alcance
**Incluye:** reseñas y calificaciones, verificación de que la reseña viene de una experiencia real, moderación, detección de fraude y reseñas falsas, respuesta del comercio, apelaciones, políticas de contenido, auditoría.
**Excluye:** operación de pagos (→ `reservas-pagos`), beneficios de publicidad (→ `publicidad-colaboradores`).

## 3. Decisiones que lo afectan
- **D6:** las reseñas se verifican y moderan; confianza y reputación son excepcionales en el directorio.
- **R1:** ningún pago, plan, beneficio ni relación comercial altera reseñas, calificaciones ni su visibilidad.
- D3: los colaboradores de publicidad reciben un beneficio mínimo, **que nunca puede ser sobre su reputación**.

## 4. Entradas y salidas
- **Entra:** evento "servicio completado" (de `reservas-pagos`) o "interacción real" (de `crm-atencion`), reseña escrita, reportes de usuarios.
- **Sale:** reseña publicada / rechazada / en revisión, calificación agregada, casos de moderación, registro de auditoría.

## 5. Depende de / Entrega a
- Depende de: `reservas-pagos`, `crm-atencion`, `plataforma-tecnica`.
- Entrega a: `directorio` (calificación en perfil), comercio (reseñas recibidas).

## 6. Reglas y límites
- **Verificación:** solo puede reseñar quien tuvo una reserva o interacción real registrada. Reseñas sin vínculo verificable no se publican como "verificadas" (si se admiten, van etiquetadas aparte) [Decisión pendiente].
- **El comercio no puede borrar reseñas.** Puede responder públicamente y reportar casos que incumplan la política.
- **Los colaboradores de publicidad y los suscriptores de cualquier plan reciben el mismo trato** en moderación.
- La moderación se hace con criterios escritos y públicos; cada decisión queda registrada con motivo.
- El comercio y el reseñador tienen vía de apelación.
- Moderación **humana en la decisión final**; las herramientas automáticas detectan, no sentencian. [Supuesto: confirmar quién modera y con qué capacidad.]
- Se prohíbe: reseñas pagadas, incentivos condicionados a calificación positiva, autoreseñas, reseñas de competidores, intercambio de reseñas.

## 7. Entregables esperados
1. Política de reseñas y contenido (pública).
2. Flujo de verificación y de moderación con tiempos objetivo.
3. Reglas de detección de fraude (patrones: ráfagas, cuentas nuevas, mismo dispositivo, etc.).
4. Procedimiento de apelación.
5. Cálculo de calificación (¿promedio simple? ¿ponderado por antigüedad?) documentado y transparente.
6. Registro de auditoría de decisiones.

## 8. Criterios de calidad
- Una persona razonable puede entender por qué una reseña se publicó o se rechazó.
- Auditoría periódica comprobando que ningún plan ni beneficio correlaciona con mejor calificación artificial.
- Tiempo de moderación dentro del objetivo definido.

## 9. Preguntas abiertas
- ¿Quién modera y cuántas horas/semana hay disponibles? (Es trabajo continuo, no solo software.)
- ¿Se aceptan reseñas de interacciones sin pago (consultas)?
- ¿Cómo se trata a comercios con pocas reseñas?
