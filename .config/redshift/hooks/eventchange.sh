#!/bin/sh

case $1 in
    "period-changed")
        exec notify-send -u low "redshift" "Current period: <i>$3</i>"
        ;;
esac
