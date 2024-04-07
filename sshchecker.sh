#!/bin/bash

# Read the file line by line
while read -u 10 line; do
    # Remove the carriage return, if present
    line=${line//$'\r'/}

    echo "Checking SSH Key Authentication for $line"

    # Use ssh to send a simple echo command to the slave VM
    ssh -o BatchMode=yes -o ConnectTimeout=5 $line 'echo' &> /dev/null
    if [ $? -eq 0 ]; then
        echo "$line Successful"
    else
        echo "$line Failed"
    fi
done 10< "ip.txt"

