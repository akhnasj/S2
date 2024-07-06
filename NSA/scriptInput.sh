#!/bin/bash

while read line
do
    echo $line              # "$line"
done < "${1:-/dev/stdin}"


# -- assumes terminal as the file, so prints everything we types in terminal assuming its coming from the file
# sh file.sh file.txt

# -- prints what we give as argument
# sh file.sh file.txt
