#!/bin/bash
apk add --no-cache wine=6.0-r1 freetype &&\
apk update && apk add wine && ln -s /usr/bin/wine64 /usr/bin/wine &&\
winecfg &&\
wine --version &&\
sed -i 's/NoDisplay=false/NoDisplay=true/' /usr/share/applications/wine.desktop
