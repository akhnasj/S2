#!/bin/bash


read -p "Enter a number: " n
fact=1


# -- while
while [ $n -gt 0 ]
do
    fact=$(( fact*n ))
    n=$(( n-1 ))
done

echo "Factorial : $fact"


# -- until
until [ $n = 0 ]
do
    fact=$(( fact*n ))
    n=$(( n-1 ))
done

echo "Factorial : $fact"



# -- for
# for (( i=1; i<=$n; i++))              # bash
# for (( i=$n;i>0;i-- ))

# for i in $(seq $n -1 1)
for i in $(seq 1 $n)
do
    fact=$(( fact*i ))
done
echo "Factorial : $fact"





