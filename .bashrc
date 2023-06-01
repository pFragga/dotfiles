#!/usr/bin/env bash
#
# ~/.bashrc
# Sourced ONLY when running bash as a non-login shell.

# Customize prompt
. /usr/share/git/completion/git-prompt.sh
export PS1="\$? \w"'$(__git_ps1 "(%s)")'"\$ "

# Enable vi mode
set -o vi
bind -m vi-insert "\C-h.":backward-kill-word

# Move into directory without using cd
shopt -s autocd

# Disable ctrl+s and ctrl+q
stty -ixon

# History
export HISTFILE="$XDG_STATE_HOME/bash/history"
HISTSIZE=50000
export HISTCONTROL=ignoreboth
export HISTTIMEFORMAT="%Y-%m-%d %T "

# Source aliases
ALIASES="$HOME/.aliasrc"
[ -f "$ALIASES" ] && . "$ALIASES"

# Set the LS_COLORS environment variable
eval `dircolors "$XDG_CONFIG_HOME/dircolors/dircolors"`
