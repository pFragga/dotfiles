#!/bin/sh

maim "$@" "$HOME"/Pictures/Screenshots/maim_"$(date +'%s_%F')".png || exit 1
notify-send "$(basename "$0")" 'Screen capture successful'
