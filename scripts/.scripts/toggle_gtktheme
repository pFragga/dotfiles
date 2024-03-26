#!/bin/sh

gtk_settings="${XDG_CONFIG_HOME:-$HOME/.config}"/gtk-3.0/settings.ini
[ -f "$gtk_settings" ] || exit 1

str='gtk-application-prefer-dark-theme'

if grep -q "$str=1" "$gtk_settings";
then
	sed -i "s/$str=1/$str=0/" "$gtk_settings"
else
	sed -i "s/$str=0/$str=1/" "$gtk_settings"
fi
