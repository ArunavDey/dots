#!/bin/sh

balanced="balanced"
currentProfile=$(powerprofilesctl get)

if [ $currentProfile == $balanced ]
then
  echo ""
  # echo "%{F#ffffff}pow"
else
  echo "*"
fi
