#!/bin/bash

read -p "Enter the directory: " dir
direct="/home/dora/Desktop/MCA/$dir"

if [ -d $direct ]
then
    count=$(find $direct -type f | wc -l)
    echo "No: of files = $count"
else
    echo "$dir doesnot exist!!"
fi

 

# OR



read -p "Enter the directory: " dir
direct="/home/dora/Desktop/MCA/$dir"

count=0
for item in "$direct"/* :
do
    if [ -d "$direct" ]
    then
        if [ -f "$item" ] 
        then 
            count=$(( count+1 ))
        
        fi
    else
        echo "$dir doesnot exist!!"
    fi
done
echo "No: of files = $count"  
