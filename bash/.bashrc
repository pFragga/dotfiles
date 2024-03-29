# ~/.bashrc

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# add git info to prompt
if [[ -f /usr/share/git/git-prompt.sh ]];
then
	. /usr/share/git/git-prompt.sh
	GIT_PS1_SHOWCOLORHINTS=true
	GIT_PS1_SHOWDIRTYSTATE=true
	PS1='\u@\h:\w$(__git_ps1 "(%s)")\$ '
else
	PS1='\u@\h:\w\$ '
fi

# set the title to user@host:dir - $TERM
#case "$TERM" in
#	xterm*|rxvt*|st*)
#		PS1="\[\e]0;\u@\h:\w\a\]$PS1"
#		;;
#	*)
#		;;
#esac

# move into directory without using cd
shopt -s autocd

# disable ctrl+s and ctrl+q
stty -ixon

# history
shopt -s histappend
HISTFILE="$XDG_STATE_HOME"/bash/history
HISTSIZE=5000
HISTCONTROL="erasedups:ignorespace"

# aliases and ls colors
[[ -f "$HOME"/.bash_aliases ]] && . "$HOME"/.bash_aliases
[[ -f "$HOME"/.dir_colors ]] && eval "$(dircolors "$HOME"/.dir_colors)"

# tab completion for doas works the same as for sudo
complete -F _command doas
