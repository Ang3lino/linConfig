#!/bin/bash

function initialize() {
	# development
	sudo apt install git vim neovim nodejs
	sudo apt install python3 python3-pip

	# system
	sudo apt install htop neofetch net-tools
	sudo apt install tilix
	sudo apt install gpg

	# update and upgrade the system
	sudo pkcon update
}

# See https://docs.anaconda.com/anaconda/install/linux/
function install_anaconda() {
	# For debian install the following dependecies
	sudo apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2
	sudo apt install libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

	# download anaconda
	wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh

	# acept conditions and agree them, then you'll be asked if you want to source
	# anaconda by default (yes is recommended)
	bash Anaconda*
	rm Anaconda*
}

# See https://github.com/amix/vimrc
function install_vim() {
	git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_awesome_vimrc.sh
}

