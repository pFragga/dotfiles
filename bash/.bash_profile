# ~/.bash_profile

[ -d ~/.local/bin ] && PATH=~/.local/bin:"$PATH"
[ -d ~/.scripts ] && PATH=~/.scripts:"$PATH"
export PATH

# some defaults
export SUDO_EDITOR='vim -Z -u NONE'
export VISUAL=vim
export EDITOR=vim
export TERMINAL=st

# XDG base directories
export XDG_CACHE_HOME=~/.cache
export XDG_CONFIG_HOME=~/.config
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.local/state

# declutter home directory
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export _JAVA_OPTIONS=-Djava.utils.prefs.userRoot="$XDG_CONFIG_HOME"/java
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export PYTHONSTARTUP=~/Programming/Python/pythonrc/pythonrc
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export TEXMFCONFIG="$XDG_CONFIG_HOME"/texlive/texmf-config
export TEXMFHOME="$XDG_DATA_HOME"/texmf
export TEXMFVAR="$XDG_CACHE_HOME"/texlive/texmf-var
export VAGRANT_HOME="$XDG_DATA_HOME"/vagrant
export W3M_DIR="$XDG_DATA_HOME"/w3m
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export WMAKER_USER_ROOT="$XDG_CONFIG_HOME"/GNUstep
if [ -f /etc/X11/Xsession ]; then
	# Specific to Debian
	export \
		ERRFILE="$XDG_CACHE_HOME"/X11/xsession-errors \
		USERXSESSIONRC="$XDG_CONFIG_HOME"/X11/xsessionrc
fi

# other options
export FZF_DEFAULT_OPTS='--layout=reverse'
export RANGER_LOAD_DEFAULT_RC=FALSE
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit
export SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
unset _JAVA_OPTIONS
export MANWIDTH=80

# get aliases and functions
[ -f ~/.bashrc ] && . ~/.bashrc

# autostart X on login from tty1
#if [ -n "$DISPLAY" ] && [ "$(tty)" = /dev/tty1 ]; then startx; fi
