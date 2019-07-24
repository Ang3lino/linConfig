#!/bin/bash

# chmod +x script.sh to allow system to eXecute the script

if ! dpkg -s software-properties-common ; then
	sudo apt-get install software-properties-common # nos permite agregar repositorios
fi

# instalamos neovim
if ! dpkg -s neovim ; then
    sudo add-apt-repository ppa:neovim-ppa/stable -y
    sudo apt update
    sudo apt-get install neovim -y
fi

# vim-plug para unix
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# creamos un directorio
mkdir ~/.config/nvim

# copiamos los archivos con la config. prestablecida
cp *.vim ~/.config/nvim/

# descargamos los modulos de python
if ! [ pip3 ] ; then
    sudo apt install pip3 -y
    sudo apt install pip -y
fi
#sudo apt-get -y install python3-pip

# usamos los modulos para instalar neovim
if ! [ pip list | grep neovim ]; then 
	pip install neovim
fi 

if ! [ pip3 list | grep neovim ]; then 
	pip3 install neovim
fi 

#nvim -c PlugInstall
