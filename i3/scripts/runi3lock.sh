#!/bin/sh

i3lock -e -f -k \
  --indicator \
  --radius 160 \
  --color=1d2021 \
  --inside-color=282828 \
  --ring-color=fe8019 \
  --layout-color=fbf1c7 \
  --time-color=fbf1c7 \
  --date-color=e9e0bb \
  --greeter-color=fbf1c7 \
  --insidever-color=282828 \
  --ringver-color=fabd2f \
  --insidewrong-color=282828 \
  --ringwrong-color=fb4934 \
  --line-uses-inside \
  --keyhl-color=fbf1c7 \
  --separator-color=fe8019 \
  --verif-color=fbf1c7 \
  --wrong-color=fbf1c7 \
  --modif-color=fbf1c7 \
  --date-str="%a %Y-%m-%d" \
  --verif-text="Authorising" \
  --wrong-text="Try Again" \
  --noinput-text="Cleared" \
  --lock-text="Locking" \
  --lockfailed-text="Lock Failed" \
  --composite
