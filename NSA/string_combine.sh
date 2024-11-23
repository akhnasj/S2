#!/bin/bash


read -p "Enter first string: " s1
read -p "Enter second string: " s2

echo "$s1 $s2"



# bash

s1+=" $s2"
echo "Combined String: $s1"

