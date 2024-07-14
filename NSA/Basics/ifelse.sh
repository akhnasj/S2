#! /bin/bash

count=10

# -- run bash ifelse.sh (as this syntax belongs to bash, not sh or dash)
# if (( $count > 9 ))



if [ $count -eq  9 ]
then 
	echo "condition is true"
else
	echo "condition is false"
fi
