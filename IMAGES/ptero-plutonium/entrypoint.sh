#!/bin/bash
cd /home/container

# Use checkupdater.sh to download the latest updater and run it
/checkupdater.sh

echo "Entropy available"
cat /proc/sys/kernel/random/entropy_avail

# Output Current Wine Version
wine --version

# If .wine directory doesn't exist, copy backup
if [ ! -d /home/container/.wine ]; 
then echo "Using Wine backup, copying to container..." && cp -r /wineprefix /home/container/.wine
echo "Copied Files Succesfully, Restarting to Initiate Successfully"
exit 0
fi;

# Create Shortcuts for zone files
if [ ! -e /home/container/Server/Zombie/zone ];
then ln -s /home/container/Server/zone /home/container/Server/Zombie/zone
fi;
if [ ! -e /home/container/Server/Multiplayer/zone ];
then ln -s /home/container/Server/zone /home/container/Server/Multiplayer/zone
fi;

# Setup Virtual Screen 
# Xvfb :0 -screen 0 1024x768x16 -nolisten unix
# export DISPLAY=:0.0

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo "Running ${MODIFIED_STARTUP}"

# Run the Server
( cd /home/container/Plutonium && exec xvfb-run wine ${MODIFIED_STARTUP} )