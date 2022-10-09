#!/bin/sh

var=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)

# if [ $var -lt 25 ]
# then
#     echo "%{F#83c07c}gpu $var%"
# else 
#     if [ $var -lt 75 ]
#     then
#         echo "%{F#fabd2f}gpu $var%"
#     else
#         if [ $var -ge 75 ]
#         then
#             echo "%{F#fb4934}gpu $var%"
#         fi
#     fi
# fi


echo "%{F#fabd2f}gpu $var%"
