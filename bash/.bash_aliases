# ~/.bash_aliases

# colorful output
alias diff='diff --color=auto'
alias ip='ip -c'
alias watch='watch -c'
alias bzgrep='bzgrep --color=auto'
alias grep='grep --color=auto'
alias zgrep='zgrep --color=auto'

# ls (+colorful output)
alias ls='ls -F --color=auto'
alias l.='ls -dF .* --color=auto 2>/dev/null'
alias ll='ls -lhF --color=auto'
alias ll.='ls -dlhF .* --color=auto 2>/dev/null'

# abbreviations
alias gs='git status'
alias yta='yt-dlp -i -x -f bestaudio/best'
alias status='systemctl status'
alias restart='systemctl restart'
alias stop='systemctl stop'

# leap.sh: navigate to a directory quickly
alias aueb=". leap.sh \$HOME/Documents/AUEB"
alias src=". leap.sh \$HOME/.local/src"
alias prog=". leap.sh \$HOME/Programming"
alias vid=". leap.sh \$HOME/Videos"

# transition from sudo to doas
#alias sudo=doas
#alias sudoedit="doas ${SUDO_EDITOR}"

# Syncthing
alias syncstat="systemctl status syncthing@\$USER"
alias syncstop="systemctl stop syncthing@\$USER"
alias syncstart="systemctl restart syncthing@\$USER"

# other
alias wget="wget --hsts-file=\$XDG_DATA_HOME/wget-hsts"
alias tofix='grep -nE TODO\|FIXME\|XXX'
