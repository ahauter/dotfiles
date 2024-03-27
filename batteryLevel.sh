#!/bin/bash
BAT_NAME=$(upower -e | grep BAT)
BAT_STATE=$(upower -i $BAT_NAME | grep state | awk '{print $2}')
BAT_PERCENTAGE=$(upower -i $BAT_NAME | grep percentage | awk '{print $2}')
RED='#FF0000'
GREEN='#00FF00'
YELLOW='#FFFF00'
BLUE='#FFFFFF'
BAT_FULL=""
BAT_THREE_QUARTERS=""
BAT_HALF=""
BAT_ONE_QUARTER=""
RAW_PERCENT=${BAT_PERCENTAGE::-1}
if [[ $RAW_PERCENT -gt 75 ]];
then
  BAT_ICON=$BAT_FULL
  COLOR=$GREEN
elif [[ $RAW_PERCENT -gt 50 ]];
then
  BAT_ICON=$BAT_THREE_QUARTERS
  COLOR=$GREEN
elif [[ $RAW_PERCENT -gt 25 ]];
then
  BAT_ICON=$BAT_HALF
  COLOR=$YELLOW
else
  BAT_ICON=$BAT_ONE_QUARTER
  COLOR=$RED
fi
if [[ "$BAT_STATE" = "charging" ]];
then
  BAT_ICON="$BAT_ICON "
  COLOR=$BLUE
fi
echo "$BAT_PERCENTAGE $BAT_ICON"
echo $BAT_ICON
echo $COLOR
exit 0
