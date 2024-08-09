#!/bin/bash

# Check if a serial port argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <serial_port>"
  exit 1
fi

# Assign the first argument to a variable
SERIAL_PORT=$1

# Set the region to US
meshtastic --port "$SERIAL_PORT" --set lora.region US

# Wait for 8 seconds to allow the device to reboot
sleep 8

# Set the screen flip option
meshtastic --port "$SERIAL_PORT" --set display.flip_screen true

