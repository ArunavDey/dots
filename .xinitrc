#!/bin/sh

# loads scripts
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# selects HDMI-0 when available and disables laptop screen on login
if [ $(xrandr --query | grep '\bHDMI-0 connected\b' | wc -l) -eq 1 ]
  then
  xrandr --output HDMI-0 --mode 1920x1080 --rate 144 --primary &
  xrandr --output DP-2 --off &
else
  xrandr --output DP-2 --mode 1920x1080 --rate 120 &
fi

# disables battery conservation mode and allows the battery to charge to 100%
# echo 0 | sudo tee /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode

#####################################
##### Desktop Environment Setup #####
#####################################
picom & # display compositor
dunst & # notification daemon
xss-lock --transfer-sleep-lock -- ~/.config/i3/scripts/runi3lock.sh --nofork & # enable using external lock as X screen saver
nm-applet & # network manager
blueman-applet & # bluetooth manager
xset s off & # disable screen saver
xset -dpms & # disable display power management signaling
xset b off & # disable bell 
redshift -l 12.9634:77.5855 -t 5000K:4000K -P -m randr & # screen temperature
gnome-keyring-daemon --start & # passwords
xinput set-prop 14 310 1 & # device settings
xinput set-prop 14 283 1 & # device settings

exec i3
