#!/bin/bash
apt-get update &&
wget  https://cdn.plutonium.pw/updater/plutonium.exe &&
wget  https://github.com/xerxes-at/T6ServerConfigs/archive/master.zip &&
unzip -n master.zip &&
mv ./T6ServerConfigs-master/* ./* &&
bash pluto.sh up &&
rm -r main players sound video &&
rm 
