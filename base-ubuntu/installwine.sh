#!/bin/bash
# Allow i386 Architecture
dpkg --add-architecture i386 && \
apt-get update && \
apt-get install wget gnupg2 software-properties-common -y

apt install -y apt-transport-https

# We will now setup the winehq key and repository
wget -nc https://dl.winehq.org/wine-builds/winehq.key

apt-key add winehq.key && \
add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'

# Setup key and repository for dependency of wine
wget -nv https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_20.04/Release.key -O Release.key &&
apt-key add - < Release.key &&
apt-add-repository 'deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_20.04/ ./'

# Update repository 
apt-get update

## Now we will install wine
apt-get install -y --install-recommends winehq-stable xvfb

# Clean key files
rm winehq.key Release.key

wine --version

# Add Variables to the environment at the end of ~/.bashrc
echo -e 'export WINEPREFIX=~/.wine\nexport WINEDEBUG=fixme-all\nexport WINEARCH=win64' >> ~/.bashrc

# Update our session
source ~/.bashrc

# Configure our wine environment
winecfg