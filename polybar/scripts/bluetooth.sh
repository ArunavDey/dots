#!/bin/sh

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]; then
  echo "%{F#555}bt"
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -l) -lt 2 ]; then
    echo "%{F#a89984}bt"
  fi
  echo "%{F#b8bb26}bt"
fi
