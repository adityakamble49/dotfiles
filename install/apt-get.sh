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
