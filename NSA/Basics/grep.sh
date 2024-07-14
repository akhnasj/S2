#!/bin/bash

# grep stands for "Global Regular Expression Print", used to search text or search the given file for lines having a match to the given strings or words.

echo "Enter file to search from"
read file


if [ -f "$file" ]
then 
    echo "Enter the text to be searched"
    read grepvar
    grep -i -n -c -v $grepvar $file                                               
else 
    echo "$file doesnot exist"
fi
        


# -i removes case-sensitivity
# -n gives the line number
# -c gives the word count
# -v prints the lines without the word
# -c -n count of the lines that donot have the word
