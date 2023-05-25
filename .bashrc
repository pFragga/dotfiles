#!/usr/bin/env bash
#
# ~/.bashrc
# Sourced ONLY when running bash as a non-login shell.

# Customize prompt
. /usr/share/git/completion/git-prompt.sh
RESET="\[$(tput sgr0)\]"
GREEN="${RESET}\[$(tput bold setaf 2)\]"
BLUE="${RESET}\[$(tput setaf 4)\]"
export PS1="${GREEN}\$? \w${BLUE}"'$(__git_ps1 "(%s)")'"${GREEN}\$${RESET} "

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

# Specify colors for ls
eval `dircolors "$XDG_CONFIG_HOME/dircolors"/dir_colors`
