#!/bin/bash
cd /home/container

# Output Current Wine Version
wine --version /nogui
rm start.sh
MF_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ${MF_STARTUP} > start.sh

MODIFIED_STARTUP=`bash /home/container/start.sh`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
${MODIFIED_STARTUP}


