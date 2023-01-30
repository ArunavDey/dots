#!/bin/sh

#####################################
##### Desktop Environment Setup #####
#####################################
picom & # display compositor
dunst & # notification daemon
xss-lock --transfer-sleep-lock -- /home/arunav/.config/i3/scripts/runi3lock.sh --nofork & # enable using external lock as X screen saver
nm-applet & # network manager
blueman-applet & # bluetooth manager
xset s off & # disable screen saver
xset -dpms & # disable display power management signaling
xset b off & # disable bell 
redshift -l 12.9634:77.5855 -t 6500K:4000K -P -m randr & # screen temperature
gnome-keyring-daemon --start & # passwords
xrandr --output HDMI-0 --mode 1920x1080 --rate 144 --primary & # display settings
# xinput set-prop 15 302 281 & # device settings

exec i3
# export XDG_SESSION_TYPE=x11
# export GDK_BACKEND=x11
# exec gnome-session
