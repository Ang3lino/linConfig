
# chmod +x nameOfFile.sh
# nos permite agregar repositorios
sudo apt-get install software-properties-common 

# instalamos la version mas actual de neovim 
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt-get install neovim

# vim-plug para unix
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# creamos un directorio
mkdir ~/.config/nvim

# copiamos los archivos con la config. prestablecida
cp *.vim ~/.config/nvim/

# descargamos los modulos de python
#sudo apt install pip3
#sudo apt install pip
sudo apt-get -y install python3-pip

# usamos los modulos para instalar neovim
#pip install neovim
pip3 install neovim
# ahora solo resta ejecutar el comando PlugInstall
