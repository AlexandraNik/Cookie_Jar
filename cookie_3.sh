#!/usr/bin/env bash
#########################################################################################################
# created by: purple-thistle
# purpose of: display date in format: The day is 17, The month is 12, The year is 17
# date: 15.06.21
# version: 0.2.2
#########################################################################################################


DATE=$(date +%d-%m-%y)

echo the day is $(echo $DATE | cut -d- -f1)
echo the month is $(echo $DATE | cut -d- -f2)
echo the year is $(echo $DATE | cut -d- -f3)