#!/bin/bash

# Concatenates 2 strings


echo "Enter first string"
read s1

echo "Enter second string"
read s2



echo "$s1$s2"

# or

s1+="$s2"
echo $s1

# or

c=$s1$s2
echo $c
