#!/bin/sh
sensor="$1"
message="$2"

#for debugging
#Usage: sh mqtt_pub "sensor name" "message here"
#echo "${sensor}"
#echo "${message}"

#use actual server and credentials when using
mqtt_msg="mosquitto_pub -h <replace_with_mqtt_broker> -t \"home/sensor/${sensor}\" -m \"$message\" -u <replace_with_username> -P <replace_with_password>"
#echo "$mqtt_msg"
#run command
eval ${mqtt_msg}
