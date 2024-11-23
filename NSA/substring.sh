#!/bin/bash

read -p "Enter a string: " str
read -p "Enter the starting index, and no. of characters: " i n

s=$(expr substr "$str" $i $n)

echo "Substring: $s"




# or



read -p "Enter a string: " str          # bash
read -p "Enter the starting index, and no. of characters: " i n

s=${str:$(( i-1 )):$n}                  # substr=${s:$i:$n}
echo "Substring: $s"





