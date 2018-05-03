# filesystem aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias ll="ls -lh"
alias la="ls -lah"
alias lld="ls -l | grep ^d"
alias lss="du -sh"
alias rmf="rm -rf"

# xclip - command line clipboard
alias "xc=xclip"
alias "xv=xclip -o"

# ping check
alias pdns="ping 8.8.8.8"

# wifi toggle
alias wifid="rfkill block wifi"
alias wifie="rfkill unblock wifi"

# music player
alias mp="cmus"

# exit and clear
alias e="exit"
alias c="clear"

# python
#alias python="python3"

# unity settings
alias settings="unset XDG_CURRENT_DESKTOP; unity-control-center"

# utilities
alias sw="~/.dotfiles/utils/stopwatch.sh"
alias ob="~/.dotfiles/utils/optimize-battery.sh"
alias pt="~/.dotfiles/utils/powertop.sh"
alias st="~/.dotfiles/utils/startup-task.sh"
alias mhdd="~/.dotfiles/utils/mount-hdd.sh"
alias vol="~/.dotfiles/utils/volume.sh"
alias listppa="~/.dotfiles/utils/listppa.sh"

