#!/bin/bash

echo "🚀 Iniciando FortiX Setup..."

# ────────────────────────────────────────────────
# BLOQUE 1️⃣  — QUITAR PAQUETES INNECESARIOS

echo "🗑️  Quitando paquetes innecesarios..."
sudo apt-get remove newsboat geany meld mahjongg streamtuner2 papirus-icon-theme -y
sudo apt-get autoremove -y

# ────────────────────────────────────────────────
# BLOQUE 2️⃣  — AGREGAR PAQUETES IMPORTANTES

echo "📦 Instalando paquetes importantes..."
sudo apt-get update
sudo apt-get install audacity supertux vlc -y
sudo apt-get install --no-install-recommends gnome-accessibility-themes adwaita-icon-theme -y

# ────────────────────────────────────────────────
# BLOQUE 3️⃣  — LIMPIEZA Y COPIA DE WALLPAPERS

echo "🧹 Limpiando wallpapers antiguos..."
sudo rm -rf /usr/share/wallpaper/*
sudo rm -rf /usr/share/wallpaper/grub/*

echo "📂 Copiando nuevos wallpapers FortiX..."
sudo cp -r ./wallpapers/* /usr/share/wallpaper/
sudo cp -r ./wallpapers/* /usr/share/wallpaper/grub/

# ────────────────────────────────────────────────
# BLOQUE 4️⃣  — APLICAR TEMA DE ICONOS CONTRASTE ALTO (GTK2 y GTK3)

echo "🎨 Aplicando tema de iconos Contraste Alto GTK2 y GTK3..."
mkdir -p ~/.config/gtk-3.0

echo "[Settings]" > ~/.config/gtk-3.0/settings.ini
echo "gtk-icon-theme-name = HighContrast" >> ~/.config/gtk-3.0/settings.ini

echo "gtk-icon-theme-name=\"HighContrast\"" > ~/.gtkrc-2.0

# Opcional: aplicar global para todos los usuarios
sudo cp ~/.config/gtk-3.0/settings.ini /etc/gtk-3.0/settings.ini

# ────────────────────────────────────────────────
# BLOQUE FINAL

echo "✅ FortiX Setup completado. ¡Disfruta tu distro personalizada!"