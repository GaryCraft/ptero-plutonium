# ----------------------------------
# Pterodactyl Plutonium Dockerfile
# Environment: Ubuntu 18.04
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM ubuntu:bionic

MAINTAINER GaryCraft@SpaceProject, <garycraft@our-space.xyz>

RUN apt-get update &&\apt-get install wget -y &&\wget https://raw.githubusercontent.com/GaryCraft/ptero-plutonium/main/installwine.sh &&\bash installwine.sh

RUN wget https://raw.githubusercontent.com/GaryCraft/ptero-plutonium/main/installpluto.sh &&\bash installpluto.sh

RUN adduser -D -d /home/container container

WORKDIR /home/container

USER container
ENV  USER=container HOME=/home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
