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
	if lsb_release -i | grep -qi 'debian'; then
		PS1='\u@\h:\w$(__git_ps1 "(%s)")\$ '
		#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[33m\]\[\033[00m\]$(__git_ps1 "(%s)")\$ '
	else
		PS1='[\u@\h \w$(__git_ps1 "(%s)")]\$ '
	fi
else
	if lsb_release -i | grep -qi 'debian'; then
		PS1='\u@\h:\w\$ '
		#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[33m\]\[\033[00m\]\$ '
	else
		PS1='[\u@\h \w]\$ '
	fi
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
#complete -F _command doas

cmpindent() {
	if [ $# -ne 1 ]; then
		printf "usage: cmpindent <file>\n" >&2
		return 1
	fi

	if command -v indent >/dev/null 2>&1; then
		diff -u "$1" <(indent -st -linux "$1")
	else
		printf "You need to install 'indent' first.\n"  >&2
		return 2
	fi
}

# cd looks into these directories as well
CDPATH=.:"$HOME"/Documents

# this shit took me literal YEARS to find.
PROMPT_DIRTRIM=2
