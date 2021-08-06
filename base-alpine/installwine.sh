#!/bin/bash
apk add --no-cache wine &&\
/usr/bin/wine --version &&\
sed -i 's/NoDisplay=false/NoDisplay=true/' /usr/share/applications/wine.desktop
