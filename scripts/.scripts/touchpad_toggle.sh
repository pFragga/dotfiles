#!/bin/sh

# source: https://wiki.archlinux.org/title/Touchpad_Synaptics#Software_toggle
synclient TouchpadOff=$(synclient -l | grep -c 'TouchpadOff.*=.*0')
