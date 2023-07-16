# sourced ONLY when running bash as a non-login shell

# customize prompt
. /usr/share/git/completion/git-prompt.sh
export PS1="\$? \w"'$(__git_ps1 "(%s)")'"\$ "

# enable vi mode
set -o vi
bind -m vi-insert "\C-h.":backward-kill-word

# move into directory without using cd
shopt -s autocd

# disable ctrl+s and ctrl+q
stty -ixon

# Check the window size after each command
shopt -s checkwinsize

# history
export HISTFILE="$XDG_STATE_HOME/bash/history"
HISTSIZE=50000
export HISTCONTROL=ignoreboth
export HISTTIMEFORMAT="%Y-%m-%d %T "

# source aliases
ALIASES="$HOME/.aliasrc"
[ -f "$ALIASES" ] && . "$ALIASES"

# set the LS_COLORS environment variable
LS_COLORS="$XDG_CONFIG_HOME/dircolors/dircolors"
[ -f "$LS_COLORS" ] && eval "$(dircolors "$LS_COLORS")"

# mimic zsh run-help ability
run-help() {
	help "$READLINE_LINE" 2>/dev/null || man "$READLINE_LINE"
}
bind -m vi-insert -x '"\eh": run-help'

# tab completion for doas works the same as for sudo
complete -cf doas
