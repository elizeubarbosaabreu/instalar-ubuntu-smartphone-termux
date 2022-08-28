#!/bin/bash

echo "Buscando atualizações para seu sistema"
echo ""
echo ""
sudo apt update -y
sudo apt upgrade -y
sudo apt-get dist-upgrade -y
echo ""
echo "Instalando o PI-APPS..."
echo ""
echo ""
wget -qO- https://raw.githubusercontent.com/Botspot/pi-apps/master/install | bash
echo ""
echo "Instalando diversos softwares uteis"
echo ""
echo ""
sudo apt install git thunderbird firefox-esr xpaint plank xfce4-appmenu-plugin gimp glabels thonny jupyter-notebook libreoffice -y
sudo apt install remmina retext neofetch keepassx clementine vlc pavucontrol unzip -y
sudo apt install openssh-server -y
