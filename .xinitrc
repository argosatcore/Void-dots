#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xbacklight -set 5 &
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

#Keyboard Layout
setxkbmap latam &

#Compositor

#Set mouse with left handed layout
xmodmap /home/carlos/.mouseconfig &

#Start NM Applet
exec nm-applet &
