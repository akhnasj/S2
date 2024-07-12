#!/bin/bash 

# sed stands for "Stream Editor" and is used to perform basic text transformations on an input stream (a file or input from a pipeline).


echo "Enter the file to substitute using sed"
read file


if [ -f "$file" ]
then
#    cat $file | sed 's/i/I'      # convention to use cat 
     sed 's/i/I/g' $file          # substitutes i with I, use g to replace globally  
else
    echo "$file doesnot exist"
fi



# -- -i to make permanent changes to the file; use cases right, as it is case sensitive
# sed -i 's/linux/unix/g' $file          
