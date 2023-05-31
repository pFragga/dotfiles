#!/bin/sh
#
# ~/.profile
# Sourced on login by any shell.

# Append directories to PATH
export PATH="$PATH:$HOME/.local/bin/:$HOME/.scripts/:$HOME/.local/bin/azuredatastudio-linux-x64/"

# Default programs
export BROWSER="firefox"
export EDITOR="nvim"
export PAGER="less"
export READER="zathura"
export TERMINAL="st"
export VIDEO="mpv"

# XDG Base Directories
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"

# Declutter home directory
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export ELINKS_CONFDIR="$XDG_CONFIG_HOME/elinks"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export GOPATH="$XDG_DATA_HOME/go"
export TEXMFVAR="$XDG_CACHE_HOME/texlive/texmf-var"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

# Program options
export JAVA_HOME="/usr/lib/jvm/java-20-openjdk"
export RANGER_LOAD_DEFAULT_RC="FALSE"

# Source the bashrc even on login
[ -f "$HOME/.bashrc" ] &&  . "$HOME/.bashrc"

# If logging in from tty1 and dwm is not running, start the X server
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	pgrep dwm || exec startx
fi
