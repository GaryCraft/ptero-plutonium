#!/bin/bash
dpkg --add-architecture i386
echo "Architecture Added"
apt-get install --assume-yes software-properties-common
apt-get update
wget -qO- https://dl.winehq.org/wine-builds/winehq.key | apt-key add -
apt-add-repository 'deb http://dl.winehq.org/wine-builds/ubuntu/ bionic main'
echo "WineHQ Repository added"
apt-get install --assume-yes wine-stable
apt-get install --no-install-recommends --assume-yes winehq-stable
echo "WineHQ Installed"
