#!/usr/bin/env bash
#########################################################################################################
# created by: purple-thistle
# purpose of: copy given files to user's home directory
# date: 14.06.21
# version: 0.4.4
#########################################################################################################

dest_folder=$HOME

if [[ $# -ne 0 ]]; then #filenames given as arguments
    for file in $@
    do
        cp $file $dest_folder
    done    

else
    read -p "Provide a filename to copy( press Enter to exit): " filename   #ask user for filenames 
    while [[ ! -z "$filename" ]]; do # why loop ?
        cp $filename $dest_folder
        read -p "Provide a filename to copy( press Enter to exit): " filename
    done
fi    
