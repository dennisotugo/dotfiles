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
xset +fp /home/dennis/.fonts
xset fp rehash
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
export TERMINAL=termite
export BROWSER=google-chrome

exec i3

