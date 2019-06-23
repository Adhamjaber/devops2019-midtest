#!/bin/bash

dir=$1
string=$2


function validate {

	echo "Error!! please use the pattern find_files.sh <directory> <string>"
	exit 1
}


if [ $# -eq 2 ]
then
	if [ -d $1 ]
         then
	   if [[ -n $(find $1 -type f -print | xargs grep -l $2) ]]
		then
			find $1 -type f -print | xargs grep -l $2
		else
			echo  "$2 isn't found .."
		fi
		
	else
	   echo "$1 is not a valid directory !! please try again .."
	fi
else
validate
fi

