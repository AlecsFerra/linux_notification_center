#!/bin/bash

make
if [ $? -eq 0 ]; then
    killall deadd-notification-center
    ./.out/deadd-notification-center &
    sleep 1
    notify-send "Build done sucessfully"
else
    notify-send "Build failed"
fi
