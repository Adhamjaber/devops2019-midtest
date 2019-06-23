#!/bin/bash

dir=$1		  # first argument for path (directory)
string=$2     # word to be searched


function validate {

	echo "Error!! please use the pattern find_files.sh <directory> <string>"
	exit 1
}


if [ $# -eq 2 ]   #check number of arguments sent
then
	if [ -d $1 ]   # if argument 1 is a valid directory
         then
	   if [[ -n $(find $1 -type f -print | xargs grep -l $2) ]]
		then
			find $1 -type f -print | xargs grep -l $2  # list all files contain the searched word
		else
			echo  "$2 isn't found .."   #word isn't found in given directory
		fi
		
	else
	   echo "$1 is not a valid directory !! please try again .."
	fi
else
validate   #call the function validate to check wether number of arguments is correct
fi

