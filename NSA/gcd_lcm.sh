#!/bin/bash

read -p "Enter 2 numbers: " a b
gcd=$a

if [ $b -lt $gcd ]
then 
    gcd=$b
fi

while [ $gcd -gt 0 ]
do
    x=$(expr $a % $gcd)
    y=$(expr $b % $gcd)
    if [ $x -eq 0 -a $y -eq 0 ]
    then
        echo "GCD of $a and $b: $gcd"
        break
    fi
    gcd=$(expr $gcd - 1)
done

lcm=$(expr $a \* $b / $gcd)
echo "LCM of $a and $b: $lcm"
    



# Positional Arguments

gcd=$1
if [ $2 -lt $gcd ]
then
    gcd=$2
fi

while [ $gcd -gt 0 ]
do 
    x=$(( $1 % gcd ))
    y=$(( $2 % gcd ))
    if [ $x -eq 0 -a $y -eq 0 ]
    then
        echo "GCD of $1 and $2: $gcd"
        break
    else
        gcd=$(( gcd-1 ))
    fi
done

lcm=$(( $1*$2 /gcd ))
echo "LCM of $1 and $2: $lcm"



