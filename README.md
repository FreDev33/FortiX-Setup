# 🚀 FortiX-Setup

FortiX-Setup es un script `setup.sh` que automatiza la configuración inicial de tu distro **FortiX** basada en antiX.  
Limpia paquetes innecesarios, instala utilidades clave, personaliza wallpapers y deja tu sistema listo para usar.

---

## 📂 Estructura del script

- **Bloque 1:** Quitar paquetes innecesarios (ej. Geany, Meld, Mahjongg, etc.)
- **Bloque 2:** Instalar paquetes importantes (Audacity, VLC, Supertux, temas GTK)
- **Bloque 3:** Limpiar wallpapers originales de antiX y copiar wallpapers propios de FortiX.
- **Bloque 4:** (Opcional) Aplicar tema de iconos Contraste Alto para accesibilidad.

---

## ✅ Requisitos

- Distribución basada en Debian/antiX.
- Conexión a Internet.
- Permisos de superusuario (`sudo` o root).

---

## ⚡ Cómo usar

1️⃣ Clonar el repositorio:
```bash
git clone https://github.com/FreDev33/FortiX-Setup.git