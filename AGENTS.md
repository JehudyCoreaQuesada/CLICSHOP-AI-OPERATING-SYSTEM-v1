# AGENTS.md — Reglas para agentes de código en este repositorio

OpenCode, Codex y Jules leen este archivo automáticamente al abrir el repositorio.
Es un resumen operativo. **Si algo aquí contradice `PROTOCOLO.md` o `DECISIONES.md`, prevalecen ellos.**

Idioma de trabajo: español (respuestas, documentación, commits).

## 1. Qué es este repositorio

`JehudyCoreaQuesada/CLICSHOP-AI-OPERATING-SYSTEM-v1` (privado) es la fuente única de verdad
de los proyectos que Jehudy (Clicshop Costa Rica) desarrolla con un equipo de IA.

- Continuidad y gobernanza: `continuidad-proyectos-ia/continuidad/`
  - `PROTOCOLO.md` — roles, ciclo de trabajo y reglas. **Léelo primero.**
  - `INDICE.md` — proyectos activos y su siguiente acción.
  - `proyectos/P-XXX-*/ESTADO.md` y `DECISIONES.md` — estado y decisiones de cada proyecto.
  - `plantillas/` — formatos de ENCARGO, RELEVO, ESTADO y DECISIONES.
- Código y herramientas: `scripts/`, `tests/`, `docs/`.

## 2. Orden de prioridad

1. La instrucción actual de Jehudy.
2. `DECISIONES.md` del proyecto (decisiones vigentes).
3. `ESTADO.md` del proyecto.
4. Este archivo y la memoria propia del agente (solo apoyo).

Si detectas una contradicción, no la resuelvas por tu cuenta: señálala.

## 3. Roles (resumen de PROTOCOLO §1)

| Agente | Función | Escritura |
|---|---|---|
| Jehudy | Decide, aprueba, autoriza. | Total |
| ChatGPT | Coordinación, estrategia, requisitos, revisión crítica. | Solo lectura |
| Claude (app / Cowork) | Ejecutor principal y **único escritor** de `continuidad-proyectos-ia/continuidad/` (D-001). | Sí |
| OpenCode | Ejecución de código local en el equipo de Jehudy, con modelos Claude vía API (D-006). | Solo ramas `opencode/*`; nunca la carpeta de continuidad |
| Antigravity | Ejecución local: comandos, pruebas, ramas, sincronización (D-005). | Sin escritura en la carpeta de continuidad |
| Codex | Propuestas puntuales por PR, revisadas por Claude (D-003). | Solo por PR autorizado |
| Jules | **En pausa** (D-005). No ejecutar encargos. | — |

Ningún agente se asigna alcance propio. Los cambios de rol los decide Jehudy.

## 4. Antes de actuar

1. Lee `PROTOCOLO.md` e `INDICE.md`. Identifica el proyecto (P-XXX); si no está claro, pregunta.
2. Lee `ESTADO.md` y `DECISIONES.md` de ese proyecto.
3. Aplica la **puerta de revisión** (PROTOCOLO §4) y dictamina en voz alta:
   - **APTO** — se ejecuta.
   - **APTO CON SUPUESTOS** — se ejecuta y los supuestos quedan escritos (solo si son reversibles).
   - **BLOQUEADO** — falta algo que cambia el resultado: haz preguntas concretas y no ejecutes.
4. Resume en 2–4 líneas: objetivo, alcance, archivos que vas a tocar.

## 5. Cómo trabajar

- Trabaja en una rama propia: `opencode/<tema>`, `codex/<tema>`, etc. **Nunca** hagas commit ni push directo a `main`.
- Commits: `[P-XXX] qué cambió`.
- No modifiques `continuidad-proyectos-ia/continuidad/` (salvo Claude). Si hace falta un cambio allí, escríbelo en tu RELEVO y Claude lo archiva.
- Cambios pequeños y enfocados en el encargo. No reescribas archivos completos a partir de versiones anteriores.
- Antes de terminar: ejecuta las pruebas pertinentes (por ejemplo `./tests/jules.tests.ps1`) y di cuáles corriste y su resultado.
- Entrega al final un bloque `=== RELEVO ===` (formato en `plantillas/RELEVO.md`) con rama, commit, cambios, pruebas y limitaciones.
- Distingue siempre **Propuesto / Implementado / Verificado (con evidencia) / Aprobado**. No declares aprobado lo que Jehudy no aprobó.

## 6. Prohibido sin autorización explícita de Jehudy

- Fusionar a `main`, `git push --force`, borrar ramas o historial, `git reset --hard` sobre trabajo ajeno.
- Desplegar, publicar, comprar servicios, gastar dinero o contactar a terceros.
- Iniciar sesiones remotas de Jules.

## 7. Datos sensibles (nunca en el repositorio)

Contraseñas, tokens, llaves API, números de tarjeta o cuenta, ni datos personales de clientes (Ley N.° 8968).
Anota dónde están («ver gestor de contraseñas»). Las llaves de OpenCode se guardan en su propio almacén local, fuera del repo.

## 8. Entorno técnico

- Equipo de Jehudy: Windows, PowerShell 7. Clon local: `C:\dev\CLICSHOP-AI-OPERATING-SYSTEM-v1` (no usar carpetas sincronizadas con Google Drive).
- Cliente de Jules: `scripts/jules.ps1` (en pausa). Pruebas sin red: `tests/jules.tests.ps1`.
- `.gitignore` excluye `.env*`, `*.dpapi` y `api-key.xml`. No lo debilites.
