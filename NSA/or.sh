#!/bin/bash

age=30

# -- can use "$age" if needed
# if [ $age -gt 1 ] || [ $age -lt 15 ]

# -- run bash or.sh
# if [[ $age -gt 1 || $age -lt 15 ]]

if [ $age -gt 35 -o $age -lt 40 ]
then
    echo "age is correct"
else
    echo "age is not correct"
fi
