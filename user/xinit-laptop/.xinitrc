#!/bin/sh

setxkbmap -option compose:ralt -option ctrl:nocaps

xset r rate 200 44

export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

# Load Xresouces
xrdb -load -I${HOME}/.Xresources.d ~/.Xresources

# Load system xinitrc.d
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

systemctl --wait --user start i3
