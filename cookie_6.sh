#!/usr/bin/env bash
#########################################################################################################
# created by: purple-thistle
# purpose of: 
# date: 14.06.21
# version: 0.5.3
#########################################################################################################


#Create a user helpdesk. Write a script that is started automatically when that user logs in. 
#The menu script should never be terminated, unless the user logs out.
#From this menu: make following options available: (1)reset password, (2) show disk usage, (3) ping a host, (4)log out. 
#You are welcome to add more options if you have them in mind

while true
do

cat <<- EOM # very complicated  way to print out the menu: you can use echo, printf or read itself
1. Reset password
2. Show disc usage
3. Ping a host
4. Log out
EOM

read -p "What would you like to do? " opt

case $opt in
    1) echo "You chose to change your password"
       passwd
       echo;; 
    2) echo "Showing disc usage"
        df
        echo;;
    3) "Pinging a host"
        ping -c1 $HOSTNAME
        echo;;
    4) echo "You asked to logout" 
       logout
       exit;;
    q) echo "Goodbye"
       exit;;   
    *) echo -e "Invalid option.\n" ;;
esac

done
