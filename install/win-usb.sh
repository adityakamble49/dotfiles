#!/bin/bash
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install winusb
sudo update-grub
sudo grub-install /dev/sda
sudo update-grub

