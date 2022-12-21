#!/bin/sh
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
    echo "%{F#a89984}bt"
else
    if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
    then 
        echo "%{F#98971a}bt"
    fi
    # name=$(echo info | bluetoothctl | grep 'Name')
    # IFS=' '
    # read -ra arr <<< "$name"
    # echo "%{F#b8bb26}bt ${arr[1]}"
    echo "%{F#b8bb26}bt"
fi
