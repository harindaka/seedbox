#!/bin/bash

set -e

source ./globals.sh

mkdir -p $g_transmission_config_dir
cp -n "$g_transmission_settings_template" "$g_transmission_settings" || true

mkdir -p $g_transmission_downloads_dir
mkdir -p $g_transmission_watch_dir

mkdir -p $g_jellyfin_config_dir

mkdir -p $g_commander_config_dir

./seedbox.sh up -d

echo ""
echo "Seedbox menu is accessible via port 80 (default)" 
echo ""
echo "Ensure that the following ports are allowed in your firewall"
echo "Port numbers mentioned below are their default values"
echo "If you made any changes to the ports config, use those values instead"
echo ""
echo "Seedbox dashboard e.g.: 80 (default)"
echo "Transmission ports e.g.: 4080 (default), 51413/tcp (default), 51413/udp (default)"
echo "Jellyfin port e.g.: 5080 (default)"
echo "Cloud Commander port e.g.: 6080 (default)"
