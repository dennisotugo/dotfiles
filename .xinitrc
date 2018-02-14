#!/bin/sh
#             _       _ _            
#       __  _(_)_ __ (_) |_ _ __ ___ 
#       \ \/ / | '_ \| | __| '__/ __|
#        >  <| | | | | | |_| | | (__ 
#       /_/\_\_|_| |_|_|\__|_|  \___|
                             

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

redshift &
nm-applet &     
nitrogen --restore  &   
compton --config ~/.compton.conf -b &
dunst -config $HOME/.config/dunst/dunstrc &  
xrdb -load -I$HOME ~/.Xresources
. $HOME/.config/polybar/launch_polybar.sh & 

exec i3
