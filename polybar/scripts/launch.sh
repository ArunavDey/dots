#!/bin/bash

killall polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# polybar back -c $HOME/.config/polybar/config.ini &
polybar volume -c $HOME/.config/polybar/config.ini &
polybar workspaces -c $HOME/.config/polybar/config.ini &
polybar mode -c $HOME/.config/polybar/config.ini &
polybar monitor -c $HOME/.config/polybar/config.ini &
polybar time -c $HOME/.config/polybar/config.ini &
