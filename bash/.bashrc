# ~/.bashrc

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# add git info to prompt
if [[ -f /usr/share/git/git-prompt.sh ]];
then
	. /usr/share/git/git-prompt.sh
	GIT_PS1_SHOWCOLORHINTS=true
	GIT_PS1_SHOWDIRTYSTATE=true
	GIT_PS1_SHOWUNTRACKEDFILES=true
	PS1='[\u@\h \W$(__git_ps1 "(%s)")]\$ '
else
	PS1='[\u@\h \W]\$ '
fi

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
