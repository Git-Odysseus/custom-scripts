#!/bin/sh
sensor="$1"
message="$2"

#for debugging
#Usage: sh mqtt_pub "sensor name" "message here"
#echo "${sensor}"
#echo "${message}"

mqtt_msg="mosquitto_pub -h 10.0.200.107 -t \"home/sensor/${sensor}\" -m \"$message\" -u mqttUser -P mqttPassword"
#echo "$mqtt_msg"
#run command
eval ${mqtt_msg}
