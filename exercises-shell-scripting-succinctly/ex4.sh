#!/bin/bash
FILE="/etc/shadow"
if test -f "$FILE"
 then
    echo "Shadow passwords are enabled."
fi

if test -w "$FILE"
 then 
    echo "You have permissions to edit /etc/shadow"
else
    echo "You do NOT have permissions to edit /etc/shadow."
fi

#OUTPUT:
#Shadow passwords are enabled.
#You do NOT have permissions to edit /etc/shadow.