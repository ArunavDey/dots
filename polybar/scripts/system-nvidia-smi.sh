#!/bin/sh

var=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)

# echo "﬙ $var%"
echo "gpu %{F#b8bb26}$var%%{F-}"
