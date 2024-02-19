#!/bin/sh

screenshot_dir="$HOME"/Pictures/Screenshots
mkdir -p "$screenshot_dir"

maim "$@" \
	| tee "$screenshot_dir/$(date +'%F_%H-%M-%S')".png \
	| xclip -selection clipboard -t image/png
