#!/bin/bash
apk add --no-cache wine=3.0.4-r1 freetype=2.10.0-r0 &&\
apk update && apk add wine && ln -s /usr/bin/wine64 /usr/bin/wine &&\
winecfg &&\
apk add --no-cache wget=1.20.3-r0 &&\
wget -P /mono http://dl.winehq.org/wine/wine-mono/4.9.3/wine-mono-4.9.3.msi &&\
wine msiexec /i /mono/wine-mono-4.9.3.msi &&\
rm -rf /mono/wine-mono-4.9.3.msi &&\
apk add --no-cache xvfb-run=1.20.4-r0 &&\
wine --version &&\
echo "Wine Installed, Proceeding"
