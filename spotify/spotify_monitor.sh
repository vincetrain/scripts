#!/bin/bash
readonly TIMEOUT=10
seconds=0

while [ -z "$(pgrep -x "spotify_player")" ]
do
	if [ $seconds -gt $TIMEOUT ]; then
		exit 1
	fi
	sleep 1
	((seconds++))
done

nohup $HOME/.local/scripts/spotify/spotifyd_monitor.sh 0</dev/null 1>/dev/null 2>/dev/null &
exit 0
