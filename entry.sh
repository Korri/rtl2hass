#!/bin/sh
rtl_433 \
  -F mqtt://$MQTT_HOST:$MQTT_PORT,user=$MQTT_USERNAME,pass=$MQTT_PASSWORD,retain=0 \
  -C si \
  -M newmodel \
  | python3 /scripts/rtl_433_mqtt_hass.py