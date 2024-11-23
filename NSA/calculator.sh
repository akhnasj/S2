#!/bin/bash


while true
do
    read -p "Enter 2 numbers: " a b
    read -p "Enter the operator: " op
    
    case $op in 
        "+")
            res=$(echo "$a + $b" | bc)
            ;;
        "-")
            res=$(echo "$a - $b" | bc)
            ;;
        "*")
            res=$(echo "$a * $b" | bc)
            ;;
        "/")
            res=$(echo "scale=2; $a / $b" | bc)
            ;;
          *)
            exit
            ;;
    esac
    echo "$a $op $b = $res"
done

    
