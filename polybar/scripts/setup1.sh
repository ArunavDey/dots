#!/bin/sh

killall -q polybar

# wait for the processes to be shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done


polybar -q back -c $HOME/.config/polybar/config.ini &
polybar -q time -c $HOME/.config/polybar/config.ini &
polybar -q network -c $HOME/.config/polybar/config.ini &
# polybar -q title -c $HOME/.config/polybar/config.ini &
polybar -q workspaces -c $HOME/.config/polybar/config.ini &
# polybar -q mode -c $HOME/.config/polybar/config.ini &
polybar -q monitor -c $HOME/.config/polybar/config.ini &
polybar -q volume -c $HOME/.config/polybar/config.ini &
