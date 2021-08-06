#!/bin/bash
apk add --no-cache wine=6.0-r1 freetype=2.11.0-r0&&\
winecfg &&\
wine --version &&\
sed -i 's/NoDisplay=false/NoDisplay=true/' /usr/share/applications/wine.desktop
