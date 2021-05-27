#!/bin/bash
apt-get update &&
wget  https://cdn.plutonium.pw/updater/plutonium.exe &&
wget  https://github.com/xerxes-at/T6ServerConfigs/archive/master.zip &&
unzip -n master.zip &&
mv ./T6ServerConfigs-master/* ./* &&
bash pluto.sh up &&
rm -r main players sound video &&
rm codlogo.bmp installscript.vdf localization.txt steam_api.dll Support.url t6mp.exe t6sp.exe t6zm.exe &&
rm ./zone/all/*.ipak
