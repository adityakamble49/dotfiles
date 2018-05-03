#!/bin/bash

# statup tasks - call this file in /etc/rc.local
# source /home/adiyta/.dotfiles/install/startup-task.sh
xbacklight -set 20
rfkill block bluetooth
xmodmap -e "clear lock" #disable caps lock switch
xmodmap -e "keysym Caps_Lock = Escape" #set caps_lock as escape

# enabling natural scrolling
synclient VertScrollDelta=-70

# disabling touchpad while typing
syndaemon -i 1 -K -d
