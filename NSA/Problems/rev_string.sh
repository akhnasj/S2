#!/bin/bash


read -p "Enter a string: " str
rev_str=$(echo "$str" | rev)

echo "Reversed string: $rev_str"



# or


read -p "Enter a string: " str

l=${#str}
rev_str=""

for i in $(seq $l -1 1)
do
    s=$(expr substr "$str" $i 1)
    rev_str="$rev_str$s"
done
echo "Reversed String: $rev_str"



