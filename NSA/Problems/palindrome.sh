#!/bin/bash


read -p "Enter a number: " num
n=$num
cnum=$num
rev=0

while [ $cnum -gt 0 ]
do
    n=$(( cnum%10 ))
    rev=$(( rev*10 + n))
    cnum=$(( cnum/10 ))
done

if [ $num -eq $rev ]
then
    echo "$num is a Palindrome"
else
    echo "$num is not a Palindrome"
fi
    


