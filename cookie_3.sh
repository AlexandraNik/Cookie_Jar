#!/usr/bin/env bash
#########################################################################################################
# created by: purple-thistle
# purpose of: display date in format: The day is 17, The month is 12, The year is 17
# date: 16.06.21
# version: 0.4.3
#########################################################################################################


DATE=$(date +%d-%m-%y)

printf "The day is %s\n" $(echo $DATE | awk -F- '{print $1}')
printf "The month is %s\n" $(echo $DATE | awk -F- '{print $2}')
printf "The year is %s\n" $(echo $DATE | awk -F- '{print $3}')