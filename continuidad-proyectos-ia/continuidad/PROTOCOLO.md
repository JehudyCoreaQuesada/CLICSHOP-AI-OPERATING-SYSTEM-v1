# Protocolo de coordinación multi-IA

Versión 1.0 · Vigente desde 2026-09-22 · Aprobado por: Jehudy

**Adenda de alcance, 2026-09-23:** Jehudy solicitó incorporar Google Jules al
desarrollo de Clicshop. Para encargos dirigidos a Jules se aplica el
[flujo documentado de integración](../../docs/JULES.md), con trabajo aislado y
revisión de resultados. La regla histórica de escritor único de este documento
describe el flujo manual ChatGPT–Claude; no impide la integración local solicitada
ni los encargos expresamente asignados a Jules. Véase D-003 de P-001.

## 1. Roles

| Actor | Función | Acceso a este repositorio |
|---|---|---|
| **Jehudy** | Decide prioridades, aprueba decisiones, autoriza acciones externas. Transporta información entre IA cuando no hay acceso directo. | Total |
| **ChatGPT** | Coordinación, estrategia, requisitos, prioridades y revisión crítica. | Lectura (conector GitHub) |
| **Claude** | Ejecución técnica: implementación, pruebas, depuración, documentación. Único escritor de este repositorio. | Lectura y escritura |
| **Otras IA** | Especialidad asignada caso por caso. | Según se defina |

**Escritor único.** Solo Claude escribe aquí. Así se evitan versiones en conflicto. Lo que decida ChatGPT entra como `ENCARGO` o `RELEVO` pegado por Jehudy, y Claude lo archiva.

## 2. Fuente de verdad y prioridad

1. La instrucción actual de Jehudy prevalece sobre todo lo demás.
2. Luego, `DECISIONES.md` (decisiones vigentes).
3. Luego, `ESTADO.md`.
4. La memoria propia de cada IA es solo apoyo. Si contradice este repositorio, gana el repositorio y se señala la diferencia.

## 3. Ciclo de trabajo

```
ChatGPT: define/prioriza  →  ENCARGO  →  Jehudy lo pega en Claude
Claude:  revisa el encargo (puerta de revisión)  →  ejecuta  →  verifica
Claude:  actualiza ESTADO + DECISIONES + INDICE  →  commit  →  entrega RELEVO
Jehudy:  lleva el RELEVO a ChatGPT (o ChatGPT lee el repo)  →  ChatGPT revisa críticamente
```

## 4. Puerta de revisión de encargos (obligatoria)

Antes de ejecutar un encargo, Claude comprueba:

- Objetivo verificable y criterio de aceptación medible.
- Coherencia con las decisiones vigentes y con el estado actual.
- Supuestos implícitos, datos faltantes, riesgos (legales, financieros, técnicos) y alcance.
- Viabilidad con las herramientas disponibles.

Resultados posibles:

- **APTO:** se ejecuta.
- **APTO CON SUPUESTOS:** se ejecuta y los supuestos quedan escritos. Solo si son reversibles.
- **BLOQUEADO:** falta algo que cambia el resultado. Claude devuelve preguntas concretas y no ejecuta.

La revisión se archiva en `encargos/` junto al encargo.

## 5. Estados de avance (no mezclar)

- **Propuesto:** idea o plan, sin ejecutar.
- **Implementado:** hecho, pendiente de comprobar.
- **Verificado:** comprobado con evidencia (prueba, lectura de vuelta, cálculo, revisión). Se indica cuál.
- **Aprobado:** Jehudy lo aceptó.

## 6. Reglas de calidad

- Separar hechos, inferencias y supuestos. No inventar datos, fuentes, accesos ni resultados.
- Nunca guardar en este repositorio contraseñas, tokens, llaves API, números de tarjeta o cuenta, ni datos personales de clientes (Ley N.° 8968). Para esos casos se usa una referencia: «ver gestor de contraseñas», «ver carpeta X en Drive».
- Sin autorización explícita de Jehudy no hay acciones destructivas, gastos, publicaciones ni compromisos externos.
- `ESTADO.md` debe caber en una pantalla. El detalle va en archivos enlazados.

## 7. Nomenclatura

- Proyectos: `P-001`, `P-002`… Carpeta: `proyectos/P-001-nombre-corto/`
- Decisiones: `D-001`… (numeración por proyecto)
- Encargos: `encargos/E-001-AAAA-MM-DD.md`
- Commits: `[P-001] qué cambió`

## 8. Cambios a este protocolo

Cualquier IA puede proponer cambios. Jehudy los aprueba. Claude los aplica y sube la versión.
