#!/bin/bash


# -- Reading a file

echo "Enter the file to read"
read file


if [ -f "$file" ]
then 
	while IFS= read -r line		
	do
		echo "$line"
	done < $file
else
	echo "$file doesnot exist"
fi


# IFS is to deal with whitespaces, can also use IFS=""
# -r to read line by line
