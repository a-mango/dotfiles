#!/usr/bin/env bash

# You can call this script like this:
# $ ./volumeControl.sh up
# $ ./volumeControl.sh down
# $ ./volumeControl.sh mute

# Script modified from these wonderful people:
# https://github.com/dastorm/volume-notification-dunst/blob/master/volume.sh
# https://gist.github.com/sebastiencs/5d7227f388d93374cebdf72e783fbd6a

var=$(xbacklight)
brightness=${var%.*}
iconBrightness="computer-laptop"
 
# Calculate the bar and padding width
let barWidth=(brightness/3)
let paddingWidth=33-barWidth
# https://en.wikipedia.org/wiki/Box-drawing_character
bar=$(seq --separator="⣿" 0 "$barWidth" | sed 's/[0-9]//g')
barPadding=$(seq --separator="⣀" 0 "$paddingWidth" | sed 's/[0-9]//g')
# Send the notification
dunstify -i $iconBrightness -r 2594 -u normal "       $bar$barPadding"
