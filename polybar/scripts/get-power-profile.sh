#!/bin/sh

balanced="balanced"
currentProfile=$(powerprofilesctl get)

if [ $currentProfile == $balanced ]
then
  echo ""
else
  echo "*"
fi
