#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script

xrandr --output Virtual1 --mode 1920x1080 &
~/.fehbg &
xrdb -merge .Xresources &
exec i3
