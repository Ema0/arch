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

xset +fp ~/.fonts           # Prepend a custom font path to Xorg's list of known font paths

xsetroot -solid black
setxkbmap it
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
export XDG_CONFIG_HOME="$HOME/.config"


xsetroot -solid "#000000" &

#./bar | lemonbar -p -g 1440x20 -f Terminus:size=8 -f Stlarch:size=8 &
#urxvt &

#conky &

#exec bspwm
exec openbox-session
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

