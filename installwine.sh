#!/bin/bash
dpkg --add-architecture i386
echo "d ------Architecture i386 Added"

apt-get install --assume-yes software-properties-common
apt-get update
wget -qO- https://dl.winehq.org/wine-builds/winehq.key | apt-key add -
apt-add-repository 'deb http://dl.winehq.org/wine-builds/ubuntu/ bionic main'
echo "c ------WineHQ Repository added"

wget https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/Release.key
sudo apt-key add Release.key
sudo apt-add-repository 'deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/ ./'
apt-get update
apt-get install libsdl2-2.0-0 -y
apt-get install libfaudio0 libasound2-plugins:i386 -y
echo "c ------Dependencies installed"

apt-get install --assume-yes wine-stable-i386 wine-stable-amd64
apt-get install --assume-yes wine-stable
apt-get install --no-install-recommends --assume-yes winehq-stable
echo "c ------WineHQ Installed"
