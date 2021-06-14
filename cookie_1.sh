#!/usr/bin/env bash
#########################################################################################################
# created by: purple-thistle
# purpose of: copy the contents of the log file /var/log/messages to another file and clear it's contents
# date: 13.06.21
# version: 0.0.1
#########################################################################################################

if [[ "$UID" == "0" ]]; then

    cat /var/log/messages > /var/log/messages.old
    echo "" > /var/log/messages

else

    echo "You do not have permissions!"

fi