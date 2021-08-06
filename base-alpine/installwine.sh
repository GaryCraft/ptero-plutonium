#!/bin/bash
apk add --no-cache wine=6.0-r1 freetype &&\
apk add --no-cache xvfb-run=1.20.4-r0 &&\
apk update && apk add wine && ln -s /usr/bin/wine64 /usr/bin/wine &&\
winecfg &&\
wine --version &&\
echo "Wine Installed, Proceeding"
