#!/usr/bin/env bash
#########################################################################################################
# created by: purple-thistle
# purpose of: cut name from a string in format 'n=bruce,dc=vaiolabs,dc=com' and write it to stdout(file of strings in cookie_5.sh)
# date: 14.06.21
# version: 0.2.1
#########################################################################################################


if [[ $# -ne 0 ]]; then #string given as arguments

    string=$1
    
else

    read -p "Provide a string in format 'n=bruce,dc=vaiolabs,dc=com'( press Enter to exit): " string
    
fi    

NAME=$(echo $string | cut -d= -f2 | cut -d, -f1 | tr [A-Z] [a-z]) #cutting name from format n=bruce,dc=vaiolabs,dc=com

echo $NAME