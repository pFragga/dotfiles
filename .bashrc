#!/usr/bin/env bash
#
# ~/.bashrc
# Sourced ONLY when running bash as a non-login shell.

# Customize prompt
. /usr/share/git/completion/git-prompt.sh
GREEN="\[$(tput bold setaf 2)\]"
RESET="\[$(tput sgr0)\]"
export PS1="${GREEN}"'[$?] \w$(__git_ps1 "(%s)")\$ '"${RESET}"

# Enable vi mode
set -o vi
bind -m vi-insert "\C-h.":backward-kill-word

# Move into directory without using cd
shopt -s autocd

# Disable ctrl+s and ctrl+q
stty -ixon

# Line wrap on window resize
shopt -s checkwinsize

# History
export HISTFILE="$XDG_STATE_HOME/bash/history"
HISTSIZE=20000
export HISTCONTROL=ignoreboth
export HISTTIMEFORMAT="%Y-%m-%d %T "

# Source aliases
ALIASES="$HOME/.aliasrc"
[[ -f "$ALIASES" ]] && . "$ALIASES"
