#!/bin/bash

set -e

export g_username="admin"
export g_password="admin"

export g_uid=$(id -u)
export g_gid=$(id -g)

script_file=$(readlink -f $0)
export src_dir=`dirname $script_file`
export g_data_dir=$src_dir/data

export g_transmission_dir=$g_data_dir/transmission
export g_transmission_settings_template=$src_dir/transmission/config/settings.json
export g_transmission_config_dir=$g_transmission_dir/config
export g_transmission_settings=$g_transmission_dir/config/settings.json
export g_transmission_downloads_dir=$g_transmission_dir/downloads
export g_transmission_watch_dir=$g_transmission_dir/watch

export g_jellyfin_dir=$g_data_dir/jellyfin
export g_jellyfin_config_dir=$g_jellyfin_dir/config

export g_commander_dir=$g_data_dir/commander
export g_commander_config_dir=$g_commander_dir/config

export g_nginx_config_dir=$src_dir/nginx/config