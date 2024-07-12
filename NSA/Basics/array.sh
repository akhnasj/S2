#! /bin/bash


car=('BMW' 'Corvette' 'Honda' 'Rover')

# unset car[2]
# car[2]="Toyota"


echo "${car[@]}"

echo "${car[0]}"

echo "${!car[@]}"       # show the all indexes

echo "${#car[@]}"       # gives the length of array




# bash
