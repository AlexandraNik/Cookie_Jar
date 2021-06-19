#!/usr/bin/env bash
#########################################################################################################
# created by: purple-thistle
# purpose of: cut name from a string in format 'n=bruce,dc=vaiolabs,dc=com' and write it to stdout(file of strings in cookie_5.sh)
# date: 16.06.21
# version: 0.3.1
#########################################################################################################


if [[ $# -ne 0 ]]; then #string given as arguments

    string=$1
    
else

    read -p "Provide a string in format 'n=bruce,dc=vaiolabs,dc=com'( press Enter to exit): " string
    
fi    

NAME=$(echo $string | cut -d= -f2 | cut -d, -f1) #cutting name from format n=bruce,dc=vaiolabs,dc=com

echo $NAME # why not to use bash possibility to lower case instead of tr --> echo ${NAME,,}

echo ${NAME,,}
