# ~/.bash_profile

export PATH="$PATH:$HOME/.local/bin:$HOME/.scripts:$HOME/.local/share/npm/bin"

# default programs
export BROWSER=firefox
export EDITOR=vim
export PAGER=less
export READER=zathura
export TERMINAL=st
export VISUAL=vim

# XDG base directories
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_RUNTIME_DIR=/tmp/user/"$(id -u)"  # subject to change
mkdir -m 700 -p "$XDG_RUNTIME_DIR" 2>/dev/null

# declutter home directory
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export PYTHONSTARTUP=/etc/python/pythonrc
export TEXMFCONFIG="$XDG_CONFIG_HOME"/texlive/texmf-config
export TEXMFHOME="$XDG_DATA_HOME"/texmf
export TEXMFVAR="$XDG_CACHE_HOME"/texlive/texmf-var
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc

# other options
export RANGER_LOAD_DEFAULT_RC=FALSE

# get aliases and functions
[[ -f "$HOME"/.bashrc ]] &&  . "$HOME"/.bashrc

# autostart X on login from tty1
if [[ ! $DISPLAY && $(tty) = /dev/tty1 ]]; then startx; fi
