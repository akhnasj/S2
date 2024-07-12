#!/bin/bash

# $@ takes infinite inputs
args=("$@")


# -- prints out the first two arguments
# -- ($1) in the input will be assigned index[0] in array(args)
echo ${args[0]} ${args[1]}  


# -- prints 2 arguments
 echo $1 $2

# -- prints all arguments
echo $@

# -- prints length of array
echo $#


# bash file.sh a1 a2 a3
