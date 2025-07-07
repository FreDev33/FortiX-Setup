#!/bin/bash

echo "🚀 Iniciando FortiX Setup..."

# ------------------------------
# BLOQUE 1️⃣: QUITAR PAQUETES
echo "🧹 Quitando paquetes innecesarios..."
sudo apt-get remove nombre1 nombre2 nombre3 -y
sudo apt-get autoremove -y

# ------------------------------
# BLOQUE 2️⃣: AGREGAR PAQUETES
echo "📦 Instalando paquetes importantes..."
sudo apt-get update
sudo apt-get install paquete1 paquete2 paquete3 -y

# ------------------------------
# BLOQUE 3️⃣: LIMPIEZA WALLPAPERS + COPIA
echo "🧹 Limpiando wallpapers antiguos..."
sudo rm -rf /usr/share/wallpaper/*
sudo rm -rf /usr/share/wallpaper/grub/*

echo "📂 Copiando nuevos wallpapers FortiX..."
sudo cp -r ./wallpapers/* /usr/share/wallpaper/
sudo cp -r ./wallpapers/* /usr/share/wallpaper/grub/

# ------------------------------
# BLOQUE 4️⃣: OPCIONAL - ICONOS
# echo "🎨 Aplicando tema de iconos Contraste Alto..."
# sudo apt-get install papirus-icon-theme -y

# ------------------------------
# BLOQUE ✅ FINAL
echo "✅ FortiX Setup completado. ¡Disfrutá tu distro personalizada!