# sourced when bash is a login shell

export PATH="$PATH:$HOME/.local/bin/:$HOME/.scripts/"

# default programs
export BROWSER="firefox"
export EDITOR="nvim"
export PAGER="less"
export READER="zathura"
export TERMINAL="st"
export VIDEO="mpv"
export VISUAL="nvim"

# XDG base directories
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# declutter home directory
export ELINKS_CONFDIR="$XDG_CONFIG_HOME/elinks"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOPATH="$XDG_DATA_HOME/go"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"
export TEXMFVAR="$XDG_CACHE_HOME/texlive/texmf-var"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# program options
export JAVA_HOME="/usr/lib/jvm/java-20-openjdk"
export RANGER_LOAD_DEFAULT_RC="FALSE"

# disable beeping in the tty
setterm -blength 0

[[ -f "$HOME/.bashrc" ]] &&  . "$HOME/.bashrc"

# autostart X on login
if [ "$DISPLAY" = "" ] && [ "$XDG_VTNR" -eq 1 ]; then
	exec startx
fi
