#!/bin/sh

screenshot_dir="$HOME"/Pictures/Screenshots
mkdir -p "$screenshot_dir" || exit 1

output="$screenshot_dir/$(date +'%F_%H-%M-%S')".png
maim "$@" | tee "$output" | xclip -selection clipboard -t image/png \
	&& notify-send "$(basename "$0")" "Screenshot saved at $output"
