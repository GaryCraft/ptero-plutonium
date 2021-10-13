#!/bin/bash
cd /home/container

# Output Current Wine Version
wine --version

# Setup Virtual Screen 
Xvfb :0 -screen 0 1024x768x16 
export DISPLAY=:0.0

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo "${MODIFIED_STARTUP}"

# Run the Server
echo "${MODIFIED_STARTUP}" > /home/container/start.sh && bash start.sh
