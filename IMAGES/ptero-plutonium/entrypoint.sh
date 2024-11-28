#!/bin/bash
cd /home/container

# Use checkupdater.sh to download the latest updater and run it
# /checkupdater.sh

# Output Current Wine Version
wine --version

if [ ! -d /home/container/.wine ]; 
then echo "Wineprefix not found, initialiizing wine" && /usr/sbin/winetricks
echo "Configured Succesfully"
fi;

UPDATE_COMMAND="bin/plutonium-bootstrapper-win32.exe -update-only"


# Setup Virtual Screen 
# Xvfb :0 -screen 0 1024x768x16 -nolisten unix
# export DISPLAY=:0.0
export WINEDEBUG=fixme-all

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
# UPDATE_STARTUP=`bin/plutonium-bootstrapper-win32.exe -update-only`
UPDATE_STARTUP=`eval echo $(echo ${UPDATE_COMMAND} | sed -e 's/{{/${/g' -e 's/}}/}/g')`

# Run Plutonium as self-updater
( cd /home/container/Plutonium && exec xvfb-run wine ${UPDATE_STARTUP} )

echo "Running ${MODIFIED_STARTUP}"
# Run the Server
( cd /home/container/Plutonium && exec xvfb-run wine ${MODIFIED_STARTUP} )