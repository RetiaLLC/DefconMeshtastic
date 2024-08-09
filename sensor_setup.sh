#!/bin/bash

# Check if a serial port argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <serial_port>"
  exit 1
fi

# Assign the first argument to a variable
SERIAL_PORT=$1

# Run the Meshtastic setup commands
meshtastic --port "$SERIAL_PORT" --set telemetry.environment_update_interval 10 \
           --set telemetry.environment_measurement_enabled true \
           --set telemetry.environment_screen_enabled true \
           --set telemetry.environment_display_fahrenheit true

