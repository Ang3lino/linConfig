
# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# mac add-ons
brew install --cask alt-tab
brew install MonitorControl
brew install iterm2
brew install font-hack-nerd-font
brew install --cask betterdisplay

# dev
brew install python go java 
brew install sl cmatrix
brew install gh
brew install wget
brew install nvim tmux
brew install --cask visual-studio-code
brew install --cask virtualbox

# lvim
LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)
export lvim=/Users/angelo/.local/bin/lvim

# cloud
# https://docs.docker.com/desktop/install/mac-install/
brew install terraform 

# aws cli
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /

