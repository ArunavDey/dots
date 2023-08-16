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
xss-lock --transfer-sleep-lock -- ~/.config/i3/scripts/runi3lock.sh --nofork & # enable using external lock as X screen saver
nm-applet & # network manager
blueman-applet & # bluetooth manager
xset s off & # disable screen saver
xset -dpms & # disable display power management signaling
xset b off & # disable bell 
redshift -l 12.9634:77.5855 -t 5000K:4000K -P -m randr & # screen temperature
gnome-keyring-daemon --start & # passwords
# xinput set-prop 14 310 1 & # device settings
# xinput set-prop 14 283 1 & # device settings

exec i3
