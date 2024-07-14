#!/bin/bash



select car in BMW HONDA TOYOTA ROVER
do
#   echo "You have selected $car"
    case $car in
        BMW)
            echo "BMW selected"
            ;;

        HONDA)
            echo "HONDA selected"
            ;;
        
        TOYOTA)
            echo "TOYOTA selected"
            ;;

        ROVER)
            echo "ROVER selected"
            ;;

        *)
            echo "ERROR! Please select from 1 to 4"
            ;; 
    esac

done




#bash
