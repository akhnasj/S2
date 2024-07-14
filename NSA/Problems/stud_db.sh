#!/bin/bash

i="yes"
read -p "Enter name of database: " db

while [ $i = "yes" ]
do
    clear 
    echo "1. View Database"
    echo "2. View Specific Record"
    echo "3. Add Record"
    echo "4. Delete Record"
    echo "5. Exit"

    read -p "Enter your choice: " ch
    case $ch in
    1)
        cat $db 
        ;;
    2)
        read -p "Enter ID: " id
        grep -i $id $db
        ;;
    3)
        read -p "Enter new ID: " nid
        read -p "Enter student name: " name
        read -p "Enter designation: " des
        read -p "Enter college name: " college
        echo "$nid $name $des $college" >> $db
        ;;
    4)
        read -p "Enter ID: " id
        grep -v $id $db > dbdel
        sed -i '/$id/d' $db
        echo "Record is deleted"
        cat dbdel
        ;;
    5)
        exit
        ;;
    *)
        echo "Invalid choice!!"
        ;;
    esac

    read -p "Do you want to continue: " i
    if [ $i != "yes" ]
    then
        exit
    fi
done
        
    
