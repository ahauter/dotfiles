#!/bin/bash
IDLE="$(mpstat | tail -1 | awk {'print $13'})"
USAGE="$(bc <<< "100-$IDLE")"
echo "$USAGE%"
