#!/bin/bash


while true
do
    read -p "Enter 2 numbers: " a b
    read -p "Enter the operator: " op
    
    case $op in 
        "+")
            res=$( echo "$a+$b" | bc )
            ;;
        "-")
            res=$(( a-b ))
            ;;
        "*")
            res=$(( a*b ))
            ;;
        "/")
            res=$(( a/b ))
            ;;
          *)
            exit
            ;;
    esac
    echo "$a $op $b = $res"
done

    
