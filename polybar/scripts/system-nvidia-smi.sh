#!/bin/sh

var=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)
echo "%{F#b8bb26}gpu $var%"
