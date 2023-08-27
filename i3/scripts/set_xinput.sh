#!/bin/sh

if [ $(xinput | grep '\bG102\b' | wc -l) -eq 0 ]
then
  xinput set-prop 13 293 1 & # tapping
  xinput set-prop 13 288 1 & # natural scrolling
  # notify-send -h int:value:42 "xinput for trackpad" &
else
  xinput set-prop 14 310 0 & # tapping
  xinput set-prop 14 283 0 & # natural scrolling
  # notify-send -h int:value:42 "xinput for G102" &
fi


