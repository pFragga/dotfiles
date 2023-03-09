#!/bin/sh
#
# ~/.profile
# Sourced on login by any shell.

# Append directories to PATH
export PATH="$PATH:$HOME/.local/bin/:$HOME/.scripts/"

# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"

# XDG Base Directories
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

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
export RANGER_LOAD_DEFAULT_RC="FALSE"
#export BTPD_HOME="$XDG_CONFIG_HOME"

# Source the bashrc even on login
[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"

# If logging in from tty1 and dwm is not running, start the X server
if [ "$(tty)" = "/dev/tty1" ]; then
    pgrep dwm || exec startx "$XINITRC"
fi
