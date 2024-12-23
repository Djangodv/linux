#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script

#Set display of output 'Virtual1' to hd resolution
xrandr --output Virtual1 --mode 1920x1080 &
#Load in the background set with feh
~/.fehbg &
#Merge .Xresources config file at startup
xrdb -merge .Xresources &
#Set keybindings (used for Caps Lock as mod key in i3)
xmodmap ~/.Xmodmap &
exec i3 #Execute i3 
