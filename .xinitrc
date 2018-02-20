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


dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
export TERMINAL=termite
export BROWSER=google-chrome-stable
exec /usr/lib/polkit-1/polkitd --no-debug &
exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
exec redshift &
exec feh --bg-scale /home/dennisotugo/Pictures/Wallpaper/o2696006.jpg &   
exec compton --config ~/.compton.conf -b &
exec dunst -config $HOME/.config/dunst/dunstrc &  
exec xrdb -load -I$HOME ~/.Xresources &
exec polybar top &

exec i3
