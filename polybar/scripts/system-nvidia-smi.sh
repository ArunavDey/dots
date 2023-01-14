#!/bin/sh

var=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)

echo "﬙ $var%"
