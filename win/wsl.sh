
# assume ubuntu 24.04 LTS is installed
# fix installation issues
sudo apt update
sudo apt upgrade
sudo mv /var/lib/dpkg/info /var/lib/dpkg/info_silent
sudo mkdir /var/lib/dpkg/info
sudo apt-get update
sudo apt-get -f install
sudo mv /var/lib/dpkg/info/* /var/lib/dpkg/info_silent
sudo rm -rf /var/lib/dpkg/info
sudo mv /var/lib/dpkg/info_silent /var/lib/dpkg/info
sudo apt-get update
sudo apt-get upgrade

sudo apt install git neovim gh -y 
sudo apt install python python3-pip
sudo apt install neofetch htop 

# devops
sudo apt install ansible terraform

# install lvim
sudo apt install cargo
LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)

# git init https://www.youtube.com/watch?v=rQgp84UUuG0
git config --global user.name "Ang3lino"
git config --global user.email "m.eng.angel.manriquez@gmail.com"

# In order to perform git ops do the below steps to auth via SSH
# generate keygen (-C arg can be set as anything)
# ssh-keygen -t rsa -b 4096 -C "ntt"
# Copy the public key from cat ~/.ssh/id_rsa.pub and add it to settings > ssh and gpg keys 

# Improve default terminal
# https://dev.to/abdfnx/oh-my-zsh-powerlevel10k-cool-terminal-1no0
sudo apt install zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Prior to this install fonts for much better experience - https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#installation
# manual installation
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# Install desktop enviroment
# https://youtu.be/Ijw1Av9xrwY?si=Ow4ULW98bxvsKmP5
sudo apt install tasksel
sudo tasksel
