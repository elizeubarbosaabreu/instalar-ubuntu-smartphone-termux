#!/bin/bash
#Get the necessary components
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:xubuntu-dev/staging -y
sudo apt update
sudo apt install udisks2 -y
echo "" > /var/lib/dpkg/info/udisks2.postinst
sudo dpkg --configure -a
sudo apt-mark hold udisks2
sudo apt install keyboard-configuration -y
sudo apt install tzdata -y
sudo apt install sudo wget nano inetutils-tools dialog -y
sudo apt install xfce4 xfce4-goodies xfce4-terminal tigervnc-standalone-server tigervnc-common dbus-x11 ffmpeg language-pack-en --no-install-recommends -y
sudo apt --fix-broken install
sudo apt clean

mkdir -p ~/.vnc

echo '#!/bin/bash
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
export PULSE_SERVER=127.0.0.1
XAUTHORITY=$HOME/.Xauthority
export XAUTHORITY
LANG=en_US.UTF-8
export LANG
echo $$ > /tmp/xsession.pid
dbus-launch --exit-with-session startxfce4 &' > ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup

echo " "

echo "Running browser patch"
wget https://raw.githubusercontent.com/tuanpham-dev/termux-ubuntu/master/ubchromiumfix.sh && chmod +x ubchromiumfix.sh
sudo ./ubchromiumfix.sh && rm -rf ubchromiumfix.sh

echo "Voce pode ver a interface grafica do sistema operacional iniciando o VNC com o comando vncserver-start"
echo " "
echo "Da primeira vez que acessar o sistema sera solicitado mudanca de senha."
echo " "
echo "O VNC Server esta rodando em 127.0.0.1:5901"
echo " "
echo "Voce pode usar um vnc viewer de sua preferencia. Recomento o AVNC ou MultiVNC por ser ferramntas gratuitas"
echo " "
echo "Conect ao endereco acima para visualizar a interface grafica do sistema..."
echo " "
echo " "
echo " "
echo "vncserver-start funcionando..."
echo " "
echo " "
echo " "
echo "Para desligar o VNCSERVER digite vncserver-stop"
echo " "
echo " "
echo " "

echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile

vncpasswd
wget -q https://raw.githubusercontent.com/tuanpham-dev/termux-ubuntu/master/.profile -O $HOME/.profile.1 > /dev/null
cat $HOME/.profile.1 >> $HOME/.profile && rm -rf $HOME/.profile.1
source ~/.profile
