#!/bin/sh

maim "$@" "$HOME"/Pictures/Screenshots/"$(date +'%F_%H-%M-%S')".png || exit 1
notify-send "$(basename "$0")" 'Screen capture successful'
