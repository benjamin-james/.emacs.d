# gets the "active" tty
declare -rx active=$(</sys/class/tty/tty0/active)

[[ -r $HOME/.bashrc ]] && source "$HOME"/.bashrc
[[ -d $HOME/bin ]] && PATH=$HOME/bin:$PATH

export XDG_CACHE_HOME=$HOME/.cache \
       XDG_CONFIG_HOME=$HOME/.config \
       XDG_DATA_HOME=$HOME/.local/share

# sets XDG_VTNR to the active tty number if not set
export XDG_VTNR=${XDG_VTNR:-${active#tty}}

# 'exec startx' makes sure that if x crashes or exits
# the user is logged out afterwards
[[ -z $DISPLAY && XDG_VTNR -eq 1 ]] && exec startx
