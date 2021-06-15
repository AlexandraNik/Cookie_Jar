#!/usr/bin/env bash
#########################################################################################################
# created by: purple-thistle
# purpose of: extract names from file "ldapuser" and create new users(commented out)
# date: 14.06.21
# version: 0.3.3
#########################################################################################################


cut -d= -f2 ldapuser | cut -d, -f1 > names.txt  #cutting names from format n=bruce,dc=vaiolabs,dc=com

line_num=1
while read line
do 

    if [[ "$UID" == "0" ]]; then

        echo creating user ${line}
        #useradd ${line}

    else

        echo "You do not have permissions to create new users!"
        exit

    fi  


    (( line_num++ )) # what bout `let` command ?
    
done < names.txt    # great work !!!
