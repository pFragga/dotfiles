#!/bin/sh
#
# This file is meant to be sourced.

depth=1

case $1 in
	"$HOME"/Documents/AUEB)
		depth=4
		;;
	"$HOME"/Programming|"$HOME"/Documents/Markdown)
		depth=2
		;;
	"$HOME"/Videos)
		depth=3
		;;
esac

cd "$1" || exit 1
target=$(find . -maxdepth "$depth" -type d | fzf --prompt 'Which directory? ')

if [ "$target" ]; then
	cd "$target" || exit
else
	cd - > /dev/null 2>&1 || exit
fi
