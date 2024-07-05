# sudo chmod +x winehq
# installing WineHQ packages

# If you have previously installed a Wine package from another repository, please remove it and any packages that depend on it (e.g., wine-mono, wine-gecko, winetricks) before attempting to install the WineHQ packages, as they may cause dependency conflicts.

# If your system is 64 bit, enable 32 bit architecture (if you haven't already):

sudo dpkg --add-architecture i386 

# Add the repository:

wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/

# Dialog-warning.svg On Linux Mint 17.x, the last line should be the following:

sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ trusty main'

# Dialog-warning.svg On Linux Mint 18.x, the last line should be the following:

sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ xenial main'

# Update packages:

sudo apt-get update

# Then install one of the following packages:
# Stable branch 	

sudo apt-get install --install-recommends winehq-stable

# Development branch 	

# sudo apt-get install --install-recommends winehq-devel

# Staging branch 	

# sudo apt-get install --install-recommends winehq-staging

# If apt-get complains about missing dependencies, install them, then repeat the last two steps (update and install). 
