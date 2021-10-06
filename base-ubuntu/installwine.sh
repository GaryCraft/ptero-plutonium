dpkg --add-architecture i386
apt update
wget -qO- https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
apt install software-properties-common
apt-add-repository "deb http://dl.winehq.org/wine-builds/ubuntu/ $(lsb_release -cs) main"
apt install --install-recommends winehq-stable
wine --version
