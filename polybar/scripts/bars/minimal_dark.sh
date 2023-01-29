#!/bin/sh

killall polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done


polybar -q minimal_dark -c $HOME/.config/polybar/bars/minimal_dark.ini &
# polybar -q border_dark -c $HOME/.config/polybar/bars/minimal_dark.ini &
