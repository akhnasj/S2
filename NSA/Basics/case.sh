#!/bin/bash

# car="Corvette"
car=$1

case $car in
    "BMW")
        echo "It is BMW";;
    "Benz")
        echo "It is Benz";;
    "AUDI")
        echo "It is AUDI";;
    "Corvette")
        echo "It is Corvette";;
    *)
        echo "Unknown Car";;
esac



# run sh case.sh Benz
# run sh case.sh
