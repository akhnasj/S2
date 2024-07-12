#!/bin/bash


count=8

if [ $count -lt 9 ]
then 
    echo "first condition is true"
elif [ $count -gt 9 ]
then 
    echo "second condition is true"
else
    echo "condition is false"
fi
