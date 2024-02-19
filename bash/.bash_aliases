# ~/.bash_aliases

# colorful output
alias ls='ls -hF --color=auto --group-directories-first'
alias grep='grep --color=auto'

# abbreviations
alias gd='git diff'
alias gs='git status'
alias ll='ls -l'
alias neofetch=screenfetch
alias yta='yt-dlp -x -f bestaudio/best'
alias smci='sudo make clean install'
alias conn='nmcli device wifi connect'
alias list='nmcli device wifi list'

# leap script: navigate to a directory quickly
alias aueb=". leap $HOME/Documents/AUEB"
alias src=". leap $HOME/.local/src"
alias prog=". leap $HOME/Programming"
alias conf=". leap $XDG_CONFIG_HOME"

# transition from sudo to doas
alias sudo=doas
alias sudoedit=doasedit

# other
alias wget="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"
