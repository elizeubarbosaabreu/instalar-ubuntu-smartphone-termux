# Instalação do UBUNTU 20 no Android com TERMUX

Esse repositório é um fork do repositório [tuanpham-dev](https://github.com/tuanpham-dev/termux-ubuntu). O único trabalho que tive foi traduzí-lo e indicar alguns temas que considero interessantes.

Todos os Scripts de instalação são originalmente obtidos de [AndronixApp](https://github.com/AndronixApp/termux-packages) e apenas receberam algumas modificações para serem colados diretamente no terminal do [Termux](https://termux.dev/en/) em seu Smartphone.

Este instalador pretende instalar as seguintes funcionalidades e softwares em seu Smartphone com Termux:

- [x] Ubuntu 20
- [x] XFCE4 Desktop
- [x] TigerVNC Server
- [x] Non-root Account Creation
- [x] Audio Support
- [x] Chromium Browser

## Instalação

Escolha um tipo de Sistema abaixo aí basta copiar e colar o conteúdo no termminal do Termux em seu Smartphone:

### Use o código abaixo para instalar o Ubuntu 20 com XFCE4

```bash
pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/elizeubarbosaabreu/instalar-ubuntu-smartphone-termux/master/ubuntu.sh && chmod +x ubuntu.sh && bash ubuntu.sh
```

### Use Esse comando para instalar o Ubuntu Server (apenas terminal)

```bash
pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/elizeubarbosaabreu/instalar-ubuntu-smartphone-termux/master/ubuntu.sh && chmod +x ubuntu.sh && bash ubuntu.sh nde
```

### Use o código abaixo para instalar o Ubuntu 20 com LXDE

```bash
pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/elizeubarbosaabreu/instalar-ubuntu-smartphone-termux/master/ubuntu.sh && chmod +x ubuntu.sh && bash ubuntu.sh lxde
```

## Utilização do sistema

### Rodar o Ubuntu

Após a instalação e configuração do sistema. Rode o comando abaixo no termux para iniciar o Ubuntu:

```bash
./start-ubuntu20.sh
```

### Desligar o Ubuntu

Para desligar o Ubuntu, digite 'exit' na tela do Termux no Smartphone. Também pode usar CRTL+D ou mesmo digitar 'logout'

```
exit
```

### Iniciar o VNC SERVER para acessar o ambiente remotamente

On Ubuntu, run this command to start VNC Server:

```bash
vncserver-start
```

Se você for acessar o ubuntu usando um VNC Cliente dentro do próprio smartphone pode usar os endereços `localhost:1` or `localhost:5901`. Para acessar através de um outro computador na mesma rede será necessário inserir o ip do celular que está rodando o ubuntu. Ex.: ```192.168.2.101:1``` (A porta sempre será 1 ou 5901)

### Desligar o VNC Server

Dentro do Ubuntu digite o comando abaixo para parar o VNC Server:

```bash
vncserver-stop
```

## VNC Client para Android

Abaixo indico alguns VNC Cliente para você usa em seu Smartphone:

- [AVNC](https://f-droid.org/en/packages/com.gaurav.avnc/index.html)
- [MultiVNC](https://github.com/bk138/multivnc)

## ISSUES
### Problema com o pulseaudio (sem som)

Instale o pavucontrol para que o sistema tenha som:
```
sudo apt install pavucontrol -y
```

### Erro de grupos

Se aparece mensagem como as que estão abaixo no termux quando iniciar o ubuntu:

```
groups: cannot find name for group ID 20305
groups: cannot find name for group ID 50305
```

Você pode corrigir adicionando os comando abaixo com o ID apresentado em seu terminal:

```
sudo groupadd --gid 20305 permagrp5
sudo groupadd --gid 50305 permagrp6
```

Tente a parte numérica de ```permagrp6``` por outros maiores como ```permagrp7```, ```permagrp8```... Se houver necessidade

## Instalando aplicativos

Você pode usar os comandos (no terminal do ubuntu) ```sudo apt install <nome do software>``` para instalar novos aplicativos. Use ```sudo apt search <funcionalidade>``` para descobrir novos softwares...

### Antes de instalar qualquer software atualize o sistema com os comandos abaixo:

```
sudo apt update && sudo apt upgrade -y
```


### Instale o Libre Office

Rode o comando abaixo para instalar o Libre Office:

```
wget https://raw.githubusercontent.com/tuanpham-dev/termux-ubuntu/master/librepatch.sh && chmod +x librepatch.sh && bash librepatch.sh && rm librepatch.sh -y
```

### Instalando o Firefox

Para instalar o firefox rode o comando:

```
sudo apt install firefox-esr
```

### Instale softwares adicionais (opcional):


```
sudo apt install retext keepassx inkscape drawing glabels audacious -y
```
## Adicionando temas

### Temas para UBUNTU com XFCE4:

- Deixar o Ubuntu com XFCE4 parecido com Windows 11 - [https://linuxdicasesuporte.blogspot.com/2022/03/xfce4-com-aparencia-do-windows-11-para.html](https://linuxdicasesuporte.blogspot.com/2022/03/xfce4-com-aparencia-do-windows-11-para.html)
- Outros temas - [https://www.xfce-look.org/browse?cat=138&ord=top](https://www.xfce-look.org/browse?cat=138&ord=top)

### Temas para UBUNTU com LXDE:

- Top Five Themes for LXDE - [https://www.linuxadictos.com/pt/5-grandes-temas-para-el-escritorio-lxde.html](https://www.linuxadictos.com/pt/5-grandes-temas-para-el-escritorio-lxde.html)
- Outros temas [https://www.maketecheasier.com/9-great-lxde-themes/](https://www.maketecheasier.com/9-great-lxde-themes/)



```
