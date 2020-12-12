#!/bin/bash
cat /etc/shadow
status=$?
if ["$status" -eq "0"]
 then 
    echo "Command succeeded"
    status=0
    echo "exit status $status"
    exit $status
else
    echo "Command failed"
    status=1
    echo "exit status $status"
    exit $status
fi