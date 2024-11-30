#!/bin/bash  

if [[ "$#" -ne 2 ]]; then
    echo "write.sh <path_to_file> <string_to_write>"
    exit 1
elif  echo $2 > $1 ; then
    echo "$2 written in $1"
else 
    echo "Can't write in $1"
fi