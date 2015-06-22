#!/bin/bash

INIT_STAMP=$CONF_DIR/.initialized

if [[ ! -e $INIT_STAMP ]]; then
    /scripts/init.sh
    touch $INIT_STAMP
fi

echo "Starting Mosquitto ..."
/usr/local/sbin/mosquitto -c $CONF_DIR/mosquitto.conf
