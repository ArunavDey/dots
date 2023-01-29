#!/bin/sh

i3lock -e -f -k \
  --indicator \
  --radius 160 \
  --color=000000 \
  --inside-color=111111 \
  --ring-color=aaaaaa \
  --layout-color=ffffff \
  --time-color=ffffff \
  --date-color=ffffff \
  --greeter-color=ffffff \
  --insidever-color=111111 \
  --ringver-color=ddddff \
  --insidewrong-color=111111 \
  --ringwrong-color=ff8888 \
  --line-uses-inside \
  --keyhl-color=ffffff \
  --separator-color=fe8019 \
  --verif-color=ffffff \
  --wrong-color=ffffff \
  --modif-color=ffffff \
  --date-str="%a %Y-%m-%d" \
  --verif-text="Authorising" \
  --wrong-text="Try Again" \
  --noinput-text="Cleared" \
  --lock-text="Locking" \
  --lockfailed-text="Lock Failed" \
  --composite
