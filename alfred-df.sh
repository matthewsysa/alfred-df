#!/bin/sh

availablespace=$(df -H / | awk 'FNR == 2 {print $4}')
structure='{"items": [{"title": "%s", "subtitle": "remaining on your internal drive", "icon": ["path", "icon.png"]}]}\n'
printf "$structure" "$availablespace"