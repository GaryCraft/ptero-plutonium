#!/bin/bash
dpkg --add-architecture i386
apt-get install --assume-yes software-properties-common
apt-get update
wget -qO- https://dl.winehq.org/wine-builds/winehq.key | apt-key add -
apt-add-repository 'deb http://dl.winehq.org/wine-builds/ubuntu/ bionic main'
apt-get install --no-install-recommends --assume-yes winehq-stable
