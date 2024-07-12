#!/bin/bash


function funPrint() {    
    echo $1
}
funPrint hi



# or



function funPrint() {   
    echo $1 $2 $3 $4           # $@
}
funPrint hi this is me 
