#!/bin/bash
apk add --no-cache wine=6.0-r1 freetype &&\
apk update && apk add wine && ln -s /usr/bin/wine64 /usr/bin/wine &&\
wine --version &&\
echo "Wine Installed, Proceeding"
