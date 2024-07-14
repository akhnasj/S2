#!/bin/bash

age=30


# if [ $age -gt 1 ] || [ $age -lt 15 ]   # "$age"

# -- run bash or.sh
# if [[ $age -gt 1 || $age -lt 15 ]]



if [ $age -gt 35 -o $age -lt 40 ]
then
    echo "age is correct"
else
    echo "age is not correct"
fi
