#!/usr/bin/env bash
while true
do
    sleep 0.2s

    niri msg --json focused-window \
        | jq -c 'if type != "object" then { "text": "", "tooltip": "" } else { "text": "\(.app_id): \(.title)", "tooltip": .app_id } end'
done
