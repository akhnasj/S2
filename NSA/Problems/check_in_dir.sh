#!/bin/bash


read -p "Enter the directory: " dir
direct="/home/dora/Desktop/MCA/$dir"

for i in $(ls)
do
    if [ -d $i ]
    then
        echo "$i is a directory"
    else
        echo "$i is a file"
    fi
done 


# or


for item in "$direct"/*
do
    if [ -d $item ] 
    then 
        x=$(echo "$item" | xargs basename)
        echo "$x is a directory"
    else
        x=$(echo "$item" | xargs basename)
        echo "$x is a file"
    fi
done


