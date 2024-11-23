#!/bin/bash



# -- Showing the count of users logged in

echo "Show all the users login: "
who

echo "Count of users logged in: "
who | wc -l





# -- Printing column list of files in home directory

echo "Print 3 columns in a home directory: "
ls -l | cut -c 18-24,39-50,56-





# -- Listing your job with below normal priority

echo "List of below priority jobs"
ps -al | cut -c 16-19,70-

