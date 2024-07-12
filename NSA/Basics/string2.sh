#! /bin/bash

echo "Enter first string"
read s1

echo "Enter second string"
read s2



# Compares the length of string
     
if [ "${#s1}" < "${#s2}" ]                  # can use '-lt'
then 
    echo "$s1 is smaller than $s2"
elif [ "${#s1}" > "${#s2}" ]
then 
    echo "$s2 is smaller than $s1"
else
    echo "Both strings are equal"
fi



# -- Compare lexographically

if ["$s1" \< "$s2"]




# bash
