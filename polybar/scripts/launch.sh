#!/bin/bash

killall -q polybar
# polybar base & 2>&1 | tee -a /tmp/polybar.log & disown
polybar root & 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched"
