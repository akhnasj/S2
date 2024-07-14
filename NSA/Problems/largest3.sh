#!/bin/bash


read -p "Enter 3 numbers: " a b c

if [ $a -gt $b -a $a -gt $c ]
then
    echo "$a is largest"
elif [ $b -gt $a -a $b -gt $c ]
then 
    echo "$b is largest"
else
    echo "$c is largest"
fi
