#!/bin/bash

# Path to the installer on the main VM
installer="/home/nxlog-6.2.9212_generic_rpm_x86_64.rpm"

# Read the file line by line
while IFS= read -r line || [[ -n "$line" ]]
do
    # Remove the carriage return, if present
    line=${line//$'\r'/}

    echo "Transferring installer to $line"

    # Use scp to copy the installer to the slave VM
    scp $installer $line:/home/
done < "ip.txt"


