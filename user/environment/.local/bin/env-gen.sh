#!/bin/sh

# Currently xorg session is not started by systemd so the environment variables from
# ~/.config/environment.d are not loaded in the xorg's session.
# This script load them for you
# source it from your shellrc

[ -d ~/.config/environment.d ] || exit 0

set -a
for f in ~/.config/environment.d/*; do . $f; done
set +a
