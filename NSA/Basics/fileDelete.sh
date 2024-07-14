#!/bin/bash


# -- Deleting a file

echo "Enter the file to be deleted"
read file



if [ -f "$file" ]
then 
    rm $file
    echo "$file has been deleted successfully"
else
    echo "$file doesnot exist"
fi
