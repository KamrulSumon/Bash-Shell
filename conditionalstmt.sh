#!/bin/bash

total=${1}
if [ $total -eq 1 ]; then
	echo "the number is equal to 1"
else
	echo "the number is NOT equal to 1"
fi



total=5
if [ $total -eq 1 ]; then
	echo "the number is equal to 1"
elif [ $total -eq 5 ]; then
	echo "the number is equal to 5"
        echo "Just another statement"
else
       echo "Shouldn't come here"
fi


directory=$1

# bash check if directory exists
if [ -d $directory ]; then
	echo "Directory exists!"
else 
	echo "Directory does not exists!"
fi 
