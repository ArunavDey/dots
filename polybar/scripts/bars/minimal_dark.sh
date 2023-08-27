#!/bin/sh

killall polybar

polybar -q minimal_dark -c $HOME/.config/polybar/bars/minimal_dark.ini &
# polybar -q border_dark -c $HOME/.config/polybar/bars/minimal_dark.ini &
