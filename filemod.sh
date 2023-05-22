#!/usr/bin/bash

# check for only 2 args
if [ $# -ne '2' ]; then
    echo "please enter 2 args only"
    exit 1
fi

#get the extension and directory
EXT=$1
DIR=$2

#checking if the directory exist
if [ -d "$DIR" ]; then
   echo "entering to $DIR directory"
else
   echo"$DIR is not a real directory"
   exit 1 
fi

#removing the file current extension
for file in $(find $DIR -type f);
do
  if [[ "$file" != "${file%.*}.$EXT" ]]; then
   echo "changing extension from $file to ${file%.*}.$EXT"
   mv -- "$file" "${file%.*}.$EXT"
  fi
done
find $DIR -type f
