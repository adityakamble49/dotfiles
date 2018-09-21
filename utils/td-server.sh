#!/bin/bash

sudo apt-get update && sudo apt-get install qbittorrent-nox

sudo adduser qbtuser
sudo cp qbittorrent.service /etc/systemd/system/qbittorrent.service

sudo systemctl daemon-reload

sudo su qbtuser
qbittorrent-nox
exit

sudo systemctl start qbittorrent
sudo systemctl enable qbittorrent
sudo systemctl status qbittorrent
