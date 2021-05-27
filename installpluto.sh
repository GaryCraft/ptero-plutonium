#!/bin/bash
mkdir /home/container &&
wget  -O /home/container/plutonium.exe https://cdn.plutonium.pw/updater/plutonium.exe &&
wget -O /home/container/master.zip https://github.com/xerxes-at/T6ServerConfigs/archive/master.zip &&
unzip -n master.zip -d /home/container &&
mv /home/container/T6ServerConfigs-master/* /home/container/* &&
cd /home/conatiner/ &&
bash pluto.sh up &&
rm -r main players sound video &&
rm codlogo.bmp installscript.vdf localization.txt steam_api.dll Support.url t6mp.exe t6sp.exe t6zm.exe &&
rm ./zone/all/*.ipak
