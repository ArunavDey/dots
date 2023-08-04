#!/bin/sh

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]; then
  echo "%{F#6e6a86}bt"
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -l) -lt 2 ]; then
    echo "%{F#e0def4}bt"
  fi
  echo "%{F#ebbcba}bt"
fi
