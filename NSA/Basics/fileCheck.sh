#!/bin/bash

# -- Check whether the file exists

echo "Enter file name to check"
read file


if [ -f "$file" ]               # can put it in '[[ ]]'
then 
    echo "$file exists"
else
    echo "$file doesnot exist"
fi

