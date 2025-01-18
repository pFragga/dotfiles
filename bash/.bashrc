# ~/.bashrc

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

is_debian() {
	grep -q 'Debian' /etc/os-release
	return $?
}

# Define color for hostname part of prompt
if is_debian; then
	HOST_COL="\[\e[31m\]"
else
	HOST_COL="\[\e[36m\]"
fi
RES_COL="\[\e[0m\]"

# Add git info to prompt
if [[ -f ~/.local/lib/git-prompt.sh ]]; then
	. ~/.local/lib/git-prompt.sh

	GIT_PS1_SHOWCOLORHINTS=true
	GIT_PS1_SHOWDIRTYSTATE=true
	GIT_PS1_SHOWUNTRACKEDFILES=true

	# If PROMPT_COMMAND already set (usually happens through /etc/bash.bashrc),
	# append to it.  This works fine when the previous command was setting the
	# window title.
	if [[ -n "$PROMPT_COMMAND" ]]; then
		if is_debian; then
			PROMPT_COMMAND+='; __git_ps1 "\u@$HOST_COL\h$RES_COL:\w" "\\\$ "'
		else
			PROMPT_COMMAND+='; __git_ps1 "[\u@$HOST_COL\h$RES_COL \w" "]\\\$ "'
		fi
	else
		if is_debian; then
			PROMPT_COMMAND='__git_ps1 "\u@$HOST_COL\h$RES_COL:\w" "\\\$ "'
		else
			PROMPT_COMMAND='__git_ps1 "[\u@$HOST_COL\h$RES_COL \w" "]\\\$ "'
		fi
	fi
else
	if is_debian; then
		PS1='\u@$HOST_COL\h$RES_COL:\w\$ '
	else
		PS1='[\u@\$HOST_COL\h$RES_COL \w]\$ '
	fi
fi
unset -f is_debian

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
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f ~/.dir_colors ]] && eval "$(dircolors ~/.dir_colors)"

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
CDPATH=~/Documents

# this shit took me literal YEARS to find.
PROMPT_DIRTRIM=2
