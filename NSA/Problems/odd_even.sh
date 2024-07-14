#!/bin/bash


read -p "Enter a number : " n

if [ $(($n % 2))  -eq 0 ]
then 
	echo "Even Number"
else
	echo "Odd Number"
fi


# Positional Arguments

if [ $(( $1 % 2 )) -eq 0 ]
then
    echo "Even Number"
else
    echo "Odd Number"
fi
