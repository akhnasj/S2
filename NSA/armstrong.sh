#!/bin/bash


isArmstrong() {
    num=$1
    sum=0

    while [ $num -gt 0 ]
    do 
        digit=$(( num % 10 ))
        sum=$(( sum + $(( digit * digit * digit ))))
        num=$(( num/10 ))
    done
    return $(( $1 == $sum ))
}


read -p "Enter a number: " num
isArmstrong $num

if [ $? -eq 1 ]
then
    echo "$1 is Armstrong number"
else
    echo "$1 is not Armstrong number"
fi

