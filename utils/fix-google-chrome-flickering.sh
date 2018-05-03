#!/bin/bash
sudo cp /usr/share/applications/google-chrome.desktop /usr/share/applications/google-chrome.desktop.bkp
echo "Exec=/usr/bin/google-chrome-stable –disable-gpu-driver-bug-workarounds –enable-native-gpu-memory-buffers %U" >> /usr/share/applications/google-chrome.desktop
