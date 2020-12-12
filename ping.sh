#!/bin/bash
HOST="google.com"
ping -c 1 $HOST
if [ "$?" -eq "0" ]
then
  echo "$HOST reachable."
else
  echo "$HOST unreachable."
fi
# this code sends only 1 packet with ping to the host.
# if exit status $? is equal to 0, it means host reachable.
