#!/bin/bash

age=10

# -- run bash and.sh 
# if [[ $age -gt 1 && $age -lt 15 ]]



# if [ $age -gt 1 ] && [ $age -lt 15 ]          # use "$age" if needed
if [ $age -gt 1 -a $age -lt 15 ]
then
    echo "age is correct"
else 
    echo "age is not correct"
fi
