#!/bin/bash

# prints the first 10 multiples of 2 and 3 from a starting number



read -p "Enter a number: " num

echo "Multiples of 2: "
for i in $(seq $num $(( num+10 )))
do
    x=$(( 2*i ))
    echo "2 x $i = $x"
done

echo "\nMultiples of 3: "
for i in $(seq $num $(( num+10 )))
do
    x=$(( 3*i ))
    echo "3 x $i = $x"
done


