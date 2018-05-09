#!/bin/sh

###################################
#
# Create common directory structure
#
###################################

mkdir $HOME/.config/environment.d
mkdir -p $HOME/.config/systemd/user
mkdir -p $HOME/.local/{bin,share}
mkdir $HOME/.gnupg
