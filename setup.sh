#!/usr/bin/env bash

echo "=============================="
echo " FortiX - Personalización Base "
echo "=============================="

sudo apt update

echo "Quitando paquetes innecesarios..."
sudo apt remove --purge gnome-mahjongg leafpad geany -y
sudo apt autoremove -y

echo "Instalando Papirus y Audacity..."
sudo apt install papirus-icon-theme audacity -y

echo "Copiando wallpapers..."
sudo cp -r wallpapers/* /usr/share/wallpapers/

echo "Copiando iconos..."
sudo cp -r icons/* /usr/share/icons/
