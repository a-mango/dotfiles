#!/usr/bin/env bash

# You can call this script like this:
# $ ./volumeControl.sh up
# $ ./volumeControl.sh down
# $ ./volumeControl.sh mute

# Script modified from these wonderful people:
# https://github.com/dastorm/volume-notification-dunst/blob/master/volume.sh
# https://gist.github.com/sebastiencs/5d7227f388d93374cebdf72e783fbd6a

function get_volume {
  pulsemixer --get-volume | cut -d ' ' -f 2
}

function is_mute {
  pulsemixer --get-mute
}

function send_notification {
  iconSound="audio-volume-high"
  iconMuted="audio-volume-muted"
  if [[ $(is_mute) -ne 0 ]] ; then
    dunstify -i $iconMuted -r 2593 -u normal "Audio muted"
  else
    # Calculate the bar and padding width
    volume=$(get_volume)
    let barWidth=(volume/3)
    let paddingWidth=33-barWidth
    # https://en.wikipedia.org/wiki/Box-drawing_character
    bar=$(seq --separator="⣿" 0 "$barWidth" | sed 's/[0-9]//g')
    barPadding=$(seq --separator="⣀" 0 "$paddingWidth" | sed 's/[0-9]//g')
    # Send the notification
    dunstify -i $iconSound -r 2593 -u normal "           $bar$barPadding"
  fi
}

send_notification
