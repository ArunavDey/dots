#!/bin/sh

balanced="balanced"
powerSaver="power-saver"

currentProfile=$(powerprofilesctl get)

if [ $currentProfile == $balanced ]
then
  powerprofilesctl set $powerSaver
  echo "power-saver"
else
  powerprofilesctl set $balanced
  echo "balanced"
fi
