#!/bin/sh

killall polybar

polybar -q minimal_dark -c $HOME/.config/polybar/bars/minimal_dark.ini
