# ~/.bash_aliases

# colorful output
alias ls='ls -hF --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias ip='ip -c'

# abbreviations
alias gs='git status'
alias ll='ls -lhF --color=auto --group-directories-first'
alias neofetch=screenfetch
alias yta='yt-dlp -x -f bestaudio/best'

# leap script: navigate to a directory quickly
alias aueb=". leap $HOME/Documents/AUEB"
alias src=". leap $HOME/.local/src"
alias prog=". leap $HOME/Programming"
alias conf=". leap $XDG_CONFIG_HOME"

# transition from sudo to doas
alias sudo=doas
alias sudoedit='doas rvim'

# other
alias wget="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"
