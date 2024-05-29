# ~/.bash_aliases

# colorful output
alias ls='ls -hF --color=auto'
alias grep='grep --color=auto'
alias ip='ip -c'
alias watch='watch -c'

# abbreviations
alias gs='git status'
alias ll='ls -lhF --color=auto'
alias l.='ls -d .* --color=auto'
alias yta='yt-dlp -x -f bestaudio/best'

# leap.sh: navigate to a directory quickly
alias aueb=". leap.sh $HOME/Documents/AUEB"
alias src=". leap.sh $HOME/.local/src"
alias prog=". leap.sh $HOME/Programming"

# transition from sudo to doas
#alias sudo=doas
#alias sudoedit='doas rvim'

# other
alias wget="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"
