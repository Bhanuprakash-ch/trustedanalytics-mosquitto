#!/bin/bash

PASSFILE=$CONF_DIR/.passfile

touch $PASSFILE
mosquitto_passwd -b $PASSFILE $MOSQUITTO_USER $MOSQUITTO_PASS

cp $CONF_DIR/mosquitto.conf.example $CONF_DIR/mosquitto.conf
sed -i.orig 's/^#allow_anonymous true/allow_anonymous false/' $CONF_DIR/mosquitto.conf
sed -i.orig "s|^#password_file|password_file $PASSFILE|" $CONF_DIR/mosquitto.conf


