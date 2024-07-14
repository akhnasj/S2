#!/bin/bash

# Changes the cases of strings


echo "Enter a string"
read s

echo ${s^}      # first letter Uppercase
echo ${s^^}     # all Uppercase


echo ${s,}      # first letter Lowercase
echo ${s,,}     # all Lowercase

