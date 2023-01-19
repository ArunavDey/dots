#!/bin/sh

export DESKTOP_SESSIONS=plasma

#####################################
##### Desktop Environment Setup #####
#####################################
picom & # display compositor
dunst & # notification daemon
/usr/lib/polkit-1/polkitd --no-debug # authentication agent
xss-lock --transfer-sleep-lock -- i3lock --nofork & # enable using external lock as X screen saver
nm-applet & # network manager
xset s off & # disable screen saver
xset -dpms & # disable display power management signaling
xset b off & # disable bell 
redshift -l 12.9634:77.5855 -t 6500K:4000K -P -m randr & # screen temperature
gnome-keyring-daemon --start & # passwords
# ~/.config/polybar/scripts/setup1.sh & # top bar
xrandr --output HDMI-0 --mode 1920x1080 --rate 144 --primary & # display settings
feh --bg-fill ~/Pictures/Wallpapers/forest-3.jpg & # background image
# xinput set-prop 15 302 281 & # device settings

exec i3
# exec startplasma-x11
