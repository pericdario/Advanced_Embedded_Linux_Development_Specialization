#!/bin/bash  

if [[ "$#" -ne 2 ]]; then
    echo "finder.sh <path> <file_name>"
    exit 1
elif ! [[ -d $1 ]]; then
    echo "$1 is not a valid directory"
    exit 1
else
    echo "The number of files are $(ls -1 ${1} -1 | wc -l) and the number of matching lines are $(grep -Rw "${2}" ${1} | wc -l)" 

fi
