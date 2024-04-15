#!/bin/sh

# loads scripts
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#####################################
##### Desktop Environment Setup #####
#####################################
xss-lock slock &
nm-applet & # network manager
blueman-applet & # bluetooth manager
xset s off & # disable screen saver
# xset -dpms & # disable display power management signaling
xset b off & # disable bell 
redshift -l 12.9634:77.5855 -t 5000K:4000K -P -m randr & # screen temperature
gnome-keyring-daemon --start & # passwords
xrandr --output HDMI-0 --primary --mode 1920x1080 --rate 144 --output DP-2 --mode 1920x1080 --rate 120 & # set monitor refresh rate

exec i3
