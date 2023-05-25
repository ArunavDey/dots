#!/bin/sh

balanced="balanced"
currentProfile=$(powerprofilesctl get)

if [ $currentProfile == $balanced ]
then
  echo "%{F#fbf1c7}pow"
else
  echo "%{F#b8bb26}pow"
fi
