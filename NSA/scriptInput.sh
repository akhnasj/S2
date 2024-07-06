#!/bin/bash

while read line
do
    echo $line              # "$line"
done < "${1:-/dev/stdin}"




# -- assumes terminal as the file, so prints everything we type in terminal assuming its coming from the file
# sh file.sh file.txt


# -- prints into the terminal, file we give as argument
# sh file.sh file.txt
