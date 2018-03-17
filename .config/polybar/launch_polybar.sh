#!/bin/bash 

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

if [ $# -eq 0 ] 
then 
  polybar -r main &>/dev/null &
  echo Bar main launched
else 
  polybar -r $1 & 
  echo Bar $1 launched
fi