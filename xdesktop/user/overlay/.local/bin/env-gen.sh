#!/bin/sh

# Currently xorg session is not started by systemd so the environment variables from
# ~/.config/environment.d are not loaded in the xorg's session.
# This script load them for you
# source it from your shellrc

if [ -d ~/.config/environment.d ]; then
    set -a
    for f in `ls -v ~/.config/environment.d`; do
        . ~/.config/environment.d/$f
    done
fi

