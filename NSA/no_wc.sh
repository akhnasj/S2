#!/bin/bash

read -p "Enter a file name: " file

if [ -f "$file" ]
then
    count=0
    while IFS= read -r line         
    do
        count=$(( count+1 ))
    done < $file
    echo "No: of lines = $count"
   
else
    echo "$file doesnot exits!!"
fi



# to read word by word

while IFS= read -r line
    do
        for word in $line
        do
            count=$(( count+1 ))
        done
    done < $file
    echo "No: of words = $count"




#to read character by character

while IFS= read -r -n1 char         # counts spaces too
                                    # bash




