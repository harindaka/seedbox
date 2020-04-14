#!/bin/bash

set -e

source ./globals.sh

docker run --rm -it xmartlabs/htpasswd "$g_username" "$g_password" > $g_nginx_config_dir/htpasswd