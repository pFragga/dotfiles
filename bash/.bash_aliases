# ~/.bash_aliases

# colorful output
alias ls='ls -hF --color=auto --group-directories-first'
alias grep='grep --color=auto'

# abbreviations
alias bctl=brightnessctl
alias gd='git diff'
alias gs='git status'
alias ll='ls -l'
alias nf=neofetch

# edit files on the fly
alias cfa="vim $HOME/.bash_aliases"
alias cfb="vim $HOME/.bashrc"
alias cfp="vim $HOME/.bash_profile"
alias cfv="vim $XDG_CONFIG_HOME/nvim/init.lua"
alias cfr="vim $XDG_CONFIG_HOME/ranger"
alias cfm="vim $XDG_CONFIG_HOME/mpd"
alias cfn="vim $XDG_CONFIG_HOME/ncmpcpp"
alias cfz="vim $XDG_CONFIG_HOME/zathura/zathurarc"
alias cfd="vim $XDG_CONFIG_HOME/dunst/dunstrc"
alias cfs="vim $XDG_CONFIG_HOME/sxhkd/sxhkdrc"
alias cfx="vim $XDG_CONFIG_HOME/X11"
alias cff="vim $XDG_CONFIG_HOME/fontconfig/fonts.conf"
alias cfgtk="vim -p $XDG_CONFIG_HOME/gtk-*"

# leap script: navigate to a directory quickly
alias aueb=". leap $HOME/Documents/AUEB"
alias src=". leap $HOME/.local/src"

# transition from sudo to doas
alias sudo=doas
alias sudoedit=doasedit

# other
alias wget="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"
alias yta='yt-dlp -x -f bestaudio/best'
alias phs='python -m http.server'
