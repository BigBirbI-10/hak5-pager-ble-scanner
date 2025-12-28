# Hak5 Pager - BLE Scanner

A lightweight payload for the Hak5 WiFi Pineapple Pager that scans for Bluetooth Low Energy (BLE) devices and displays them live on the screen.

## Features
- **Live Scanning:** Uses `hcitool lescan` to detect nearby BLE tags, beacons, and devices.
- **Auto-Dependency:** Automatically installs `bluez-utils` (via opkg) if not already present.
- **DuckyScript UI:** Outputs formatted logs directly to the Pager display.

## Installation

### Option 1: SCP (Recommended)
Run these commands from your computer (adjust IP if necessary):

```bash
# 1. Create directory
ssh root@172.16.52.1 "mkdir -p /mmc/root/payloads/user/general/BLEScan"

# 2. Upload script
scp payload.sh root@172.16.52.1:/mmc/root/payloads/user/general/BLEScan/

# 3. Set permissions
ssh root@172.16.52.1 "chmod +x /mmc/root/payloads/user/general/BLEScan/payload.sh"
