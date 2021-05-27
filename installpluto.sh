#!/bin/bash
mkdir /home/container &&
curl https://cdn.plutonium.pw/updater/plutonium.exe --output /home/container/plutonium.exe &&
curl https://github.com/xerxes-at/T6ServerConfigs/archive/master.zip --output /home/container/master.zip &&
unzip -n /home/container/master.zip -d /home/container/ &&
mv /home/container/T6ServerConfigs-master/* /home/container/ &&
cd /home/container/ &&
bash pluto.sh up &&
rm -r main players sound video &&
rm codlogo.bmp installscript.vdf localization.txt steam_api.dll Support.url t6mp.exe t6sp.exe t6zm.exe &&
rm ./zone/all/*.ipak
