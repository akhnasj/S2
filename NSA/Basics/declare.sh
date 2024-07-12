#!/bin/bash


# type in terminal 

# -- prints out all variables in terminal, not read-only
declare -p           

# -- declares variables directly
declare myvariable
declare myvariable=22


# or


declare -r pwdfile=/etc/passwd 
echo $pwdfile

pwdfile=/etc/abc.txt        # error shows that its a read-only variable
echo $pwdfile               # it echoes the variable value again as before as it is not changed




# bash
