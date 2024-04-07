#!/bin/sh

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]; then
  echo "%{F#6e738d}bt"
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -l) -lt 1 ]; then
    echo "%{F#cad3f5}bt"
  fi
  echo "%{F#f4dbd6}bt"
fi
