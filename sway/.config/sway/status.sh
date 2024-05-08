date=$(date +'%a %F | %R')
volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
echo $volume '|' $date
