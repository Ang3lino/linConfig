
# chmod +x nameOfFile.sh
sudo apt-get install software-properties-common # nos permite agregar repositorios

# instalamos neovim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt-get install neovim

# vim-plug para unix
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# creamos un directorio
mkdir ~/.config/nvim/init.vim

# copiamos los archivos con la config. prestablecida
cp *.vim ~/.config/nvim/

# descargamos los modulos de python
sudo apt install pip3
sudo apt install pip

# usamos los modulos para instalar neovim
pip install neovim
pip3 install neovim
# ahora solo resta ejecutar el comando PlugInstall
