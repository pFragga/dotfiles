#!/bin/sh

case $1 in
    "period-changed")
        exec notify-send "Period changed" "$2 -> $3"
        ;;
esac
