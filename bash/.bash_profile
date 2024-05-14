# ~/.bash_profile

[[ -d ~/.local/bin ]] && PATH=~/.local/bin:"$PATH"
[[ -d ~/.scripts ]] && PATH=~/.scripts:"$PATH"
export PATH

# XDG base directories
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_STATE_HOME="$HOME"/.local/state

# declutter home directory
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export _JAVA_OPTIONS=-Djava.utils.prefs.userRoot="$XDG_CONFIG_HOME"/java
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export PYTHONSTARTUP="$HOME"/Programming/Python/pythonrc/pythonrc
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export TEXMFCONFIG="$XDG_CONFIG_HOME"/texlive/texmf-config
export TEXMFHOME="$XDG_DATA_HOME"/texmf
export TEXMFVAR="$XDG_CACHE_HOME"/texlive/texmf-var
export VAGRANT_HOME="$XDG_DATA_HOME"/vagrant
export W3M_DIR="$XDG_DATA_HOME"/w3m
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc

# other options
export FZF_DEFAULT_OPTS='--layout=reverse'
export RANGER_LOAD_DEFAULT_RC=FALSE
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit
export SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
unset _JAVA_OPTIONS

# get aliases and functions
[[ -f ~/.bashrc ]] && . ~/.bashrc

# autostart X on login from tty1
#if [[ ! $DISPLAY && $(tty) = /dev/tty1 ]]; then startx; fi
