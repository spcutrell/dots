#!/bin/sh

userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/.Xresources

if [ -f $userresources ]; then
    xrdb -merge "$userresources"
fi

if [ -f $sysresources ]; then
   xrdb -merge $sysresources
fi

#Set Background
sh ~/.config/fehbg &

#Set Panel
#$HOME/.config/panel/panel_master &

#Spawn URxvt Daemon
urxvtd -q -o -f &

#Spawn Compton Daemon
compton --config "$HOME/.config/compton.conf" -b

#Spawn mpd
mpd &

#Fix that god-awful mouse icon
xsetroot -cursor_name left_ptr &

#Launch the Windows Manager
exec bspwm
