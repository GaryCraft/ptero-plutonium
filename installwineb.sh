#!/bin/bash
dpkg --add-architecture i386
echo "b ------Architecture i386 Added"

apt-get install --assume-yes software-properties-common
apt-get update
wget -qO- https://dl.winehq.org/wine-builds/winehq.key | apt-key add -
apt-add-repository 'deb http://dl.winehq.org/wine-builds/ubuntu/ bionic main'
echo "b ------WineHQ Repository added"

wget -qO- https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/Release.key | sudo apt-key add -
bash -c 'echo "deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/ ./" > /etc/apt/sources.list.d/obs.list'
apt update
echo "b ------Dependencies installed"

apt-get install --assume-yes wine-stable-i386 wine-stable-amd64
apt-get install --assume-yes wine-stable
apt-get install --no-install-recommends --assume-yes winehq-stable
echo "b ------WineHQ Installed"
