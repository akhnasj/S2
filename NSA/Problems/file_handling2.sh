#!/bin/bash


# -- Use `cat` command to create a file containing following data, call it myfile
echo "Enter the data: "
cat >> myfile



echo "\nFirst 2 rows: "
head -2 myfile



echo "\nLast 2 rows: "
tail -2 myfile



echo "\nContents of myfile copied to mycopyfile: "
cp $myfile $mycopyfile



echo "\nNo. of lines: $(wc -l < myfile)"
echo "No. of words: $(wc -w < myfile )"
echo "No. of characters: $(wc -c < myfile)"



echo "\nPrint 3rd row: "
sed -n '3p' myfile



cat myfile >> myappendfile

