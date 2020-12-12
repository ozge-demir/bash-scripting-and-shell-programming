#!/bin/bash

read -p "Enter a file or directory name: " FILE
echo "$FILE is evaluated..."
status=$?

if test -f $FILE
 then 
    status=0
    echo "exit status: $status"
elif test -d $FILE
 then 
    status=1
    echo "exit status: $status"
else 
    status=2
    echo "exit status: $status"
fi
