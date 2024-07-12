#!/bin/bash

num=1

until [ $num -gt 10 ]
do 
    echo "$num"
    num=$(($num+1))
done




# until loop will run until the condition becomes true (as long as condition is false)
 
