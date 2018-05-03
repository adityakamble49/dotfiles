#!/bin/bash

echo "\n Installing apt-get packages"
echo "\n==============================="

# updating apt-get package repository"
sudo apt-get -y update

# power optimization
sudo apt-get -y install powertop

# utilities tools
sudo apt-get -y install nload
sudo apt-get -y install curl
sudo apt-get -y install tree
sudo apt-get -y install cmake
sudo apt-get -y install tmux
sudo apt-get -y install vim
sudo apt-get -y install git
sudo apt-get -y install unzip

# development tools
sudo apt-get -y install build-essential
sudo apt-get -y install python-pip python-dev python-virtualenv
sudo apt-get -y install python3-pip python3-dev
sudo apt-get -y install gcc
sudo apt-get -y install g++
sudo apt-get install -y default-jdk

# install maven if not installed
if [ ! -d "/opt/maven" ]; then
    wget http://www-us.apache.org/dist/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.tar.gz -P /tmp
    sudo tar -xvf ~/tmp/apache-maven-3.5.3-bin.tar.gz -C /opt/
    sudo mv /opt/apache-maven-3.5.2/ /opt/maven
fi

# install jdk if not installed
#if [ ! -d "/usr/lib/jvm" ]; then
#    sudo mkdir /usr/lib/jvm/
#    sudo tar -xvf ~/Downloads/jdk-8u151-linux-x64.tar.gz -C /usr/lib/jvm
#fi

# kotlin lang
# curl -s https://get.sdkman.io | bash
# sdk install kotlin

# android studio
# sudo apt-get -y install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
# sudo apt-get -y install android-tools-adb

# android custom rom build environment
# sudo apt-get -y install bc bison build-essential curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline6-dev lib32z1-dev libesd0-dev liblz4-tool libncurses5-dev libsdl1.2-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev


# clipboard for command line
# sudo apt-get install xclip

# Remote desktop client
# apt install network-manager-openconnect
# systemctl daemon-reload
# sudo ./vpnsetup.sh - cisco anyconnect
# systemctl daemon-reload
# sudo apt-get install remmina
# sudo apt-get install remmina-plugin-rdp

