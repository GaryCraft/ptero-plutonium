#!/bin/bash
cd /home/container

# Output Current Wine Version
wine --version /nogui
rm /home/container/start.sh
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo "${MODIFIED_STARTUP}"> /home/container/start.sh


bash /home/container/start.sh
