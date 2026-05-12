# Plan de Trabajo: Retiro del Perdón 2026

Este documento detalla la hoja de ruta para la organización de los materiales y presentaciones del retiro, asegurando la continuidad del proyecto incluso a través de diferentes sesiones de agentes.

## 🎯 Objetivo General
Implementar un sistema de presentaciones dinámicas (estilo Prezi) usando **impress.js**, alojado de forma gratuita en **GitHub Pages**, integrando contenido psicológico y espiritual basado en el libro "Terapia del Perdón" y los lineamientos de la Iglesia Católica (CEC y Biblia).

---

## ✅ Tareas Completadas

### 1. Infraestructura y Portal
- [x] Inicialización de Repositorio Git y despliegue en GitHub Pages.
- [x] Creación de `index.html` (Portal de temas) con selección de idioma.
- [x] Configuración de `js/impress.js` local para soporte offline.

### 2. Tema Niños (Tema 4: El Perdón en la Familia)
- [x] Extracción de contenido de documentos Word (ES/EN).
- [x] Presentación interactiva en Español (`index.html`).
- [x] Presentación interactiva en Inglés (`index-en.html`).
- [x] Integración de video interactivo con zoom y autoplay.
- [x] Ajustes de UI: Fuentes gigantes, opacidad absoluta (sin transparencias) y escalado a pantalla completa.
- [x] Inclusión de la dinámica oficial "Dos hojas y una Cruz".
- [x] Oración final exacta según el documento.

---

## 🚀 Próximos Pasos (Pendientes)

### 3. Tema Adultos (3 Sesiones)
*   **Sesión 2: El Descubrimiento del Rencor** (Ref: pp. 17-26 del libro).
    *   [ ] Crear estructura de carpetas y `prompt.md`.
    *   [ ] Diseñar presentación interactiva (ES/EN).
*   **Sesión 6: Gratitud y Sanación de los Recuerdos** (Ref: pp. 49-55 del libro).
    *   [ ] Crear estructura de carpetas y `prompt.md`.
    *   [ ] Diseñar presentación interactiva (ES/EN).
*   **Sesión 12: El Perdón como Camino a la Libertad** (Ref: pp. 82-85 del libro).
    *   [ ] Crear estructura de carpetas y `prompt.md`.
    *   [ ] Diseñar presentación interactiva (ES/EN).

### 4. Tema Adolescentes (Tema 6: Perdonar a Dios)
*   **Tema 6: Sanar la imagen del Padre** (Ref: pp. 25, 47-48, 52, 91 del libro).
    *   [ ] Crear estructura de carpetas y `prompt.md`.
    *   [ ] Diseñar presentación interactiva (ES/EN).

### 5. Análisis de Persona (Mega-Prompt)
*   [ ] Ejecutar análisis psicológico/espiritual para cada grupo objetivo.
*   [ ] Refinar los mensajes clave de las presentaciones basados en el análisis.

---

## 🛠️ Notas Técnicas y Estrategia de Continuidad
- **Framework:** `impress.js` para visualización estática y dinámica.
- **Hosting:** GitHub Pages (`rcgonzalezf/iglesia-catolica-fuec-2026`).
- **Recursos:** Los PDFs fuente (`Virtus-09-Terapia-del-Perdon.pdf` y `TEMATICA-Adultos-2026.pdf`) son la base del contenido.
- **Manejo de Tokens:** Si se alcanza el límite de tokens, este `plan.md` sirve como punto de entrada para el siguiente agente. El agente nuevo debe leer este archivo y el `state_snapshot` para retomar el trabajo quirúrgicamente.

---
*Última actualización: 10 de Mayo, 2026*
