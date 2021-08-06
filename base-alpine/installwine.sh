#!/bin/bash
apk add --no-cache wine &&\
wine --version &&\
sed -i 's/NoDisplay=false/NoDisplay=true/' /usr/share/applications/wine.desktop
