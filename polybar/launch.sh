#!/bin/bash

killall -q polybar
polybar root & 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched"
