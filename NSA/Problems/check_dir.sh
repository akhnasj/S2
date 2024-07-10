#!/bin/bash

read -p "Enter the directory: " dir
if [ -d "$dir" ]
then
    echo "$dir is a directory"
else
    echo "$dir is not a directory"
fi



# Positional Arguments

if [ $# -eq 1 ]
then 
    if [ -d $1 ]
    then
        echo "$1 is a directory"
    else
        echo "$1 is not a directory"
    fi
else
    echo "Please enter the directory name"
fi




read -p "Enter the directory: " dir
i="/home/dora/Desktop/MCA/S2/$dir"
if [ -d $i ] 
then 
    echo "$dir is a directory"
else
    echo "$dir is not a directory"
fi
#


