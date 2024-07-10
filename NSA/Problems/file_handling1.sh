#!/bin/bash


# -- Input a page profile to yourself, copy it into other existing file

read -p "Enter a file name: " file1
echo "Enter the contents of you page profile: "
cat > $file1

read -p "Enter an existing file name: " file2
cp $file1 $file2
echo "Displaying the copy contents from $file1 to $file2: "
cat $file2

