#!/bin/bash

scrot /tmp/screen.png
convert /tmp/screen.png -scale 2.5% -scale 4000% /tmp/screen.png

if [[ -f $HOME/.config/i3lock/lock2.png ]]
then
  # placement x/y
  PX=0
  PY=0
  # lockscreen image info
  R=$(file ~/.config/i3lock/lock2.png | grep -o '[0-9]* x [0-9]*')
  RX=$(echo $R | cut -d' ' -f 1)
  RY=$(echo $R | cut -d' ' -f 3)

  SR=$(xrandr --query | grep ' connected' | sed 's/primary //' | cut -f3 -d' ')
  for RES in $SR
  do
    # monitor position/offset
    SRX=$(echo $RES | cut -d'x' -f 1)                   # x pos
    SRY=$(echo $RES | cut -d'x' -f 2 | cut -d'+' -f 1)  # y pos
    SROX=$(echo $RES | cut -d'x' -f 2 | cut -d'+' -f 2) # x offset
    SROY=$(echo $RES | cut -d'x' -f 2 | cut -d'+' -f 3) # y offset
    PX=$(($SROX + $SRX/2 - $RX/2))
    PY=$(($SROY + $SRY/2 - $RY/2))

    #convert /tmp/screen.png $HOME/.config/i3lock/lock2.png -geometry +$PX+$PY -composite -matte  /tmp/screen.png
    echo "done"
  done
fi

xbacklight -set 20
i3lock -e -u -n -i /tmp/screen.png

