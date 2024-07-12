#! /bin/bash

echo "Enter first string"
read s1

echo "Enter second string"
read s2


# case-sensitive
if [ "$s1" = "$s2" ]                # '==' operator works in bash
then
    echo "Strings match"
else 
    echo "Strings donot match"
fi


