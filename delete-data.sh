#!/bin/bash

source ./globals.sh

echo "Deleting seedbox data..."

rm -rf $g_data_dir

echo "Seedbox data deleted"