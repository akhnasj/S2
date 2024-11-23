#!/bin/bash




read -p "Enter a number: " num
n=$num
rev=0

while [ $num -gt 0 ]
do
    n=$(( num % 10 ))
    rev=$(( rev*10 + n))
    num=$(( num / 10 ))
done
echo "Reversed Number: $rev"





