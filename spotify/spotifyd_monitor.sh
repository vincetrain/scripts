#!/bin/bash
# Periodically check if spotify_player is still running 
while [ -n "$(pgrep -x "spotify_player")" ]
do
		sleep 1
done
# Kill spotifyd after spotify_player stops
pkill spotifyd
exit 0
