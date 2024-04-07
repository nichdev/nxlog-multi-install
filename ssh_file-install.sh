#!/bin/bash

# Name of the installer
installer="nxlog-6.2.9212_generic_rpm_x86_64.rpm"

# Read the file line by line
while IFS= read -r line || [[ -n "$line" ]]
do
    # Remove the carriage return, if present
    line=${line//$'\r'/}

    echo "Installing software on $line"

    # Use ssh to send the install command to the slave VM and run it in the background
    ssh $line 'sudo yum localinstall -y /home/'$installer && echo "$line Installation Successful" &
done < "ip.txt"

# Wait for all background jobs to finish
wait
