#!/bin/bash
apk add --no-cache wine=6.0-r1 freetype &&\
winecfg &&\
wine --version &&\
sed -i 's/NoDisplay=false/NoDisplay=true/' /usr/share/applications/wine.desktop
