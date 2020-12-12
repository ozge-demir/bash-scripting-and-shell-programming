#!/bin/bash
function file_count() {
    cd $1
    if test -d "$1"
    then
      echo "Directory name: $1"
      NUMBER_OF_FILES=$(ls | wc -l)
      echo "Number of files under this directory: $NUMBER_OF_FILES"
    fi
}

file_count /etc
file_count /var 
file_count /usr/bin

#OUTPUT
#Directory name: /etc
#Number of files under this directory: 348
#Directory name: /var
#Number of files under this directory: 14
#Directory name: /usr/bin
#Number of files under this directory: 3669