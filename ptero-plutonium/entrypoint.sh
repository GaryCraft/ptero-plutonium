#!/bin/bash
cd /home/container

# Output Current Wine Version
wine --version

# If .wine directory doesn't exist, copy backup
if [ ! -d /home/container/.wine ]; 
then cp -r /wineprefix /home/container/.wine && ln -s /home/container/T6_Server/Server/zone /home/container/T6_Server/Server/Zombie/zone && ln -s /home/container/T6_Server/Server/zone /home/container/T6_Server/Server/Multiplayer/zone
fi;

# Setup Virtual Screen 
# Xvfb :0 -screen 0 1024x768x16 -nolisten unix
# export DISPLAY=:0.0

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo "Running ${MODIFIED_STARTUP}"

# Run the Server
( cd /home/container/T6_Server/Plutonium && exec xvfb-run wine ${MODIFIED_STARTUP} )