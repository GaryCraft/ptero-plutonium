#!/bin/bash
apk del wine &&\
apk add --no-cache wine=6.0-r1 freetype &&\
apk add --no-cache xvfb-run &&\
apk update && apk add wine && ln -s /usr/bin/wine64 /usr/bin/wine &&\
winecfg &&\
wine --version &&\
echo "Wine Installed, Proceeding"
