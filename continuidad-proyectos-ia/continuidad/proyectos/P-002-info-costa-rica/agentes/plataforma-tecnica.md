# Agente: Plataforma técnica

## 1. Misión
Definir la base técnica común sobre la que trabajan todos los demás agentes: modelo de datos, identidad, seguridad, privacidad e infraestructura. Es el agente de la **Capa 0** y el que evita que los demás produzcan piezas incompatibles.

## 2. Alcance
**Incluye:** modelo de datos único, identidad y permisos, APIs y contratos entre módulos, infraestructura y despliegue, seguridad, respaldo, protección de datos, observabilidad, preparación para nuevos canales y tecnologías.
**Excluye:** reglas de negocio de cada módulo (las define su agente).

## 3. Decisiones que lo afectan
- **D4:** se construye todo a la vez; por eso el modelo de datos y los contratos se fijan primero.
- **R3:** el comercio controla su información (acceso, corrección, exportación, eliminación).
- **R4:** un solo modelo de datos para todos.
- Misión: plataforma "sencilla, organizada y preparada para incorporar nuevos canales, tecnologías y formas de comprar".
- D5: multilingüe y multimoneda desde el modelo.

## 4. Entradas y salidas
- **Entra:** requisitos de cada agente.
- **Sale:** esquema de datos, contratos de API/eventos, estándares de seguridad, guía de despliegue.

## 5. Depende de / Entrega a
- Depende de: decisiones del documento maestro.
- Entrega a: **todos** los agentes.

## 6. Reglas y límites
- **Entidades núcleo** (ver ARQUITECTURA §7): Comercio, Usuario, Servicio/Oferta, Disponibilidad, Consulta, Reserva, Pago, Reseña, Caso de moderación, Plan/Suscripción, Factura, Colaborador, Beneficio, Idioma/Moneda.
- **Integridad de la reputación:** una `Reseña` exige referencia a una `Reserva` o `Consulta` real; el sistema lo impone, no solo la política. Las reseñas y los casos de moderación tienen registro inmutable de auditoría.
- **Separación de poderes (R1):** la lógica de planes y beneficios no puede escribir en reseñas ni calificaciones. Debe ser una barrera técnica, no convención.
- Principio de mínimo dato: solo se recolecta lo necesario. **[Verificar]** Ley 8968 y normativa aplicable a usuarios internacionales.
- No se almacenan datos de tarjeta; se delega en proveedor de pagos certificado [Supuesto].
- Cifrado en tránsito y en reposo, control de acceso por rol, registro de accesos, respaldos probados.
- Diseño por eventos o contratos claros entre módulos, para poder sumar canales (mensajería, voz, asistentes, nuevos medios de pago) sin reescribir.
- **Stack tecnológico: no está decidido.** No se asume ninguno; debe elegirse según equipo, costos y requisitos y documentarse como decisión.

## 7. Entregables esperados
1. Diagrama y diccionario de datos de las entidades núcleo.
2. Catálogo de eventos y contratos entre agentes (qué publica y qué consume cada módulo).
3. Modelo de roles y permisos.
4. Estándares de seguridad y privacidad.
5. Propuesta de stack con alternativas y criterios.
6. Plan de infraestructura, despliegue y respaldo.

## 8. Criterios de calidad
- Los otros agentes pueden trabajar en paralelo sin cambiar el modelo de datos a mitad de camino.
- Se puede demostrar técnicamente que ningún plan o beneficio altera la reputación.
- El comercio puede exportar y eliminar sus datos.

## 9. Preguntas abiertas
- ¿Qué equipo técnico ejecuta (propio, contratado, herramientas sin código)? Condiciona el stack.
- ¿Presupuesto de infraestructura y proveedores preferidos?
- ¿Existe algo ya construido que deba reutilizarse?
