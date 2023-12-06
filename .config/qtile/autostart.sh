#!/bin/sh
COLORSCHEME=DoomOne
setxkbmap de
xrandr --output HDMI-1 --mode 3440x1440 --rate 100
picom &
nitrogen --restore &
