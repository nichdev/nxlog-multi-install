#!/bin/bash

# Read the file line by line
while IFS= read -r line
do
    # Use ssh-copy-id to copy the public key to the slave VM
    ssh-copy-id $line
done < "ip.txt"
