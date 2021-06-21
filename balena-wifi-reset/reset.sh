#!/bin/bash

echo "23" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio23/direction

echo "Type 'Enter', '~', '.' to close ssh session"
echo "1" > /sys/class/gpio/gpio23/value
sleep 10s
echo "0" > /sys/class/gpio/gpio23/value

echo "23" > /sys/class/gpio/unexport

curl -X POST --header "Content-Type:application/json" \
    "$BALENA_SUPERVISOR_ADDRESS/v1/reboot?apikey=$BALENA_SUPERVISOR_API_KEY"