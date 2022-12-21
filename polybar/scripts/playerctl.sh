#!/bin/bash

playerctlstatus=$(playerctl status 2> /dev/null)

if [[ $playerctlstatus ==  "" ]]; then
    echo ""
elif [[ $playerctlstatus =~ "Playing" ]]; then
    # echo "%{F#a89984}%{A1:playerctl pause:}pause%{A}"
    echo "%{A1:playerctl pause:}pause%{A}"
else
    # echo "%{F#a89984}%{A1:playerctl play:}play%{A}"
    echo "%{A1:playerctl play:}play%{A}"
fi
