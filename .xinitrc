#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#####################################
##### Desktop Environment Setup #####
#####################################
picom & # display compositor
dunst & # notification daemon
xss-lock --transfer-sleep-lock -- $HOME/.config/i3/scripts/runi3lock.sh --nofork & # enable using external lock as X screen saver
nm-applet & # network manager
blueman-applet & # bluetooth manager
xset s off & # disable screen saver
xset -dpms & # disable display power management signaling
xset b off & # disable bell 
redshift -l 12.9634:77.5855 -t 5000K:4000K -P -m randr & # screen temperature
gnome-keyring-daemon --start & # passwords
# xrandr --output HDMI-0 --mode 1920x1080 --rate 144 --primary & # display settings
xrandr --output DP-2 --mode 1920x1080 --rate 120 --primary & # display settings
xinput set-prop 15 304 1 & # device settings
xinput set-prop 15 283 1 & # device settings

exec i3
