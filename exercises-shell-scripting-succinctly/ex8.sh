#!/bin/bash

for NAME in $@
do
    echo "Retrieving data about $NAME:"

    if test -f $NAME
    then 
        echo "$NAME is a regular file"
        ls -l $NAME
    elif test -d $NAME
    then 
        echo "$NAME is a directory"
        ls -l $NAME
    elif test -e $NAME
    then
        echo "This file exists but neither file nor directory."
    else
        echo "There is NO such file or directory."
    fi
done

# -----accept one or more parameters in script-----

#File Operators (test)
#   -d FILE True if file is a directory
#   -e FILE True if file exists
#   -f FILE True if file exists and is a regular file
#   -r FILE True if file is readable by you
#   -s FILE True if file exists and is not empty
#   -w FILE True if the file is writable by you
#   -x FILE True if the file is executable by you 