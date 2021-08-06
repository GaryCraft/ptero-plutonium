#!/bin/bash
apk add --no-cache wine=6.0-r1 freetype &&\
apk update && apk add wine && ln -s /usr/bin/wine64 /usr/bin/wine &&\
winecfg &&\
apk add --no-cache wget &&\
wget -P /mono https://dl.winehq.org/wine/wine-mono/6.3.0/wine-mono-6.3.0-x86.msi &&\
wine msiexec /i /mono/wine-mono-6.3.0-x86.msi &&\
rm -rf /mono/wine-mono-6.3.0-x86.msi &&\
apk add --no-cache xvfb-run &&\
wine --version &&\
echo "Wine Installed, Proceeding"
