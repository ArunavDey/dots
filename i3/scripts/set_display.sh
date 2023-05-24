#!/bin/sh

if [ $(xrandr --query | grep '\bHDMI-0 connected\b' | wc -l) -eq 1 ]
  then
  xrandr --output HDMI-0 --mode 1920x1080 --rate 144 --output DP-2 --off &
  notify-send -h int:value:42 "Showing on HDMI-0"
else
  xrandr --output DP-2 --mode 1920x1080 --rate 120 &
  notify-send -h int:value:42 "Showing on DP-2"
fi
