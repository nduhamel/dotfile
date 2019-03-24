export ZSH=/home/nicolas/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  git z pass
)

source $ZSH/oh-my-zsh.sh

source ~/.local/bin/env-gen.sh

###########################
# aliases
###########################
alias o=xdg-open
# require /mnt/usb /mnt/sd exist
alias musb="sudo mount -ouser,umask=0000 /dev/sda1 /mnt/usb"
alias umusb="sudo umount /mnt/usb"
alias msd="sudo mount -ouser,umask=0000 /dev/mmcblk0p1 /mnt/sd"
alias umsd="sudo umount /mnt/sd"
