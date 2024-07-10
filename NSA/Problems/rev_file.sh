#!/bin/bash


if [ $# -eq 1 ]
then
    if [ -f $1 ]
    then
        echo "Reverse of $1"
        cat $1
        echo "\n-> \n"
        tac $1
    else
        echo "File doesnot exist!!"
    fi
else
    echo "Please enter a file name"
fi

