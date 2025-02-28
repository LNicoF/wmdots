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

bspwm -c /home/clnico/.config/bspwm/bspwmrc > .bspwm-log
# exec cutefish-session
# export XDG_SESSION_TYPE=x11
# export GDK_BACKEND=x11
# exec gnome-session

