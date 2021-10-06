#!/bin/bash
dpkg --add-architecture i386 &&
apt-get update &&
apt-get install -y gnupg software-properties-common unzip zenity &&
apt install -y xvfb &&
wget -O - https://dl.winehq.org/wine-builds/winehq.key | apt-key add - &&
add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' &&
wget -nv https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/Release.key -O Release.key &&
apt-key add - < Release.key &&
apt-add-repository 'deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/ ./' &&
apt-get update &&
apt install -y --install-recommends winehq-stable &&
wine --version && 
apt-get install -y winetricks &&
#winetricks dotnet45 &&

wget https://dl.winehq.org/wine/wine-mono/6.0.0/wine-mono-6.0.0-x86.msi -O mono.msi &&
wine mono.msi &&
rm mono.msi &&
echo "Install Finished"