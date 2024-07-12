#!/bin/bash


# -- Input a page profile to yourself, copy it into other existing file

read -p "Enter a file name: " file1
echo "Enter the contents of you page profile: "
cat > $file1

read -p "Enter an existing file name: " file2
cp $file1 $file2
echo "Displaying the copy contents from $file1 to $file2: "
#cat $file2



# -- Start printing file at certain line

read -p "Enter a file name: " file
echo "Enter the contents of the file: "
cat > $file

read -p "Enter the line number: " l
echo "Start printing from line $l: "
tail +$l $file




# -- Print all the difference between two file, copy the two files

read -p "Ener the first file name: " file1
echo "Enter the contents of $file1: "
cat > $file1

read -p "Enter the second file name: " file2
echo "Enter the contents of $file2: "
cat > $file2

read -p "Enter the third file name: " file3
echo "Difference of $file1 and $file2 is saved to $file3: "
diff -ai $file1 $file2 > $file3
cat $file3




# -- Print lines matching certain word pattern

read -p "Enter the file name: " file
echo "Enter the contents of file: "
cat > $file

read -p "Enter the pattern you have to search: " pattern
grep -ni $pattern $file




