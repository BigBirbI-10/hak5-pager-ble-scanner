#!/bin/bash
# Title: BLE Scanner
# Author: Mike
# Description: Scans for Bluetooth Low Energy devices
# Version: 1.0

# Check for hcitool
if ! command -v hcitool >/dev/null 2>&1; then
    LOG "Installing Bluez..."
    opkg update && opkg install bluez-utils
fi

LOG "Starting BLE Scan..."
LOG "Press Back to exit"

# 'hcitool lescan' runs forever, so we pipe it to a loop
# --duplicates allows seeing the same device as signal changes
hcitool lescan --duplicates | while read -r line; do
    # Filter out empty lines
    [ -z "$line" ] && continue
    
    # Output to screen
    LOG "$line"
    
    # Small delay to keep the screen readable
    # (Note: hcitool might buffer output, so this is "bursty")
done
