#!/bin/sh

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]; then
  # echo "%{F#5b6078}bt"
  echo ""
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]; then
    echo "%{F#a89984}"
  fi
  # name=$(echo info | bluetoothctl | grep 'Name')
  # IFS=' '
  # read -ra arr <<< "$name"
  # echo "%{F#b8bb26}bt ${arr[1]}"
  # echo "%{F#a6da95}bt"
  echo ""
fi
