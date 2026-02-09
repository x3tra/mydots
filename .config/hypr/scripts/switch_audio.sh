#!/bin/bash

HEADPHONES="alsa_output.usb-SteelSeries_Arctis_Nova_7-00.analog-stereo"
SPEAKERS="alsa_output.pci-0000_01_00.1.hdmi-stereo"

CURRENT=$(pactl get-default-sink)

if [ "$CURRENT" = "$HEADPHONES" ]; then
    pactl set-default-sink "$SPEAKERS"
    notify-send "Audio switched to Speakers"
else
    pactl set-default-sink "$HEADPHONES"
    notify-send "Audio switched to Headphones"
fi

