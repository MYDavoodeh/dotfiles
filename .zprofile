#!/bin/sh
# Profile file. Runs on login. Environmental variables are in ~/.env
# If you want to use Bash link this to ~/.profile

. "$HOME/.config/env"
. "$XDG_CONFIG_HOME/sh/.shrc" # Just to be sure everything is setup properly
[ -f "$HOME/.config/autostartrc" ] && . "$HOME/.config/autostartrc"

# [ ! -f "$XDG_CONFIG_HOME/shortcutrc" ] && shortcuts >/dev/null 2>&1 &
[ "$(tty)" = "/dev/tty1" ] && ! pidof Xorg >/dev/null 2>&1 && exec startx ~/.xinitrc $WM 2>/dev/null
# sudo -n loadkeys ~/.local/share/larbs/ttymaps.kmap 2>/dev/null # switches escape and caps if tty and no passwd required
