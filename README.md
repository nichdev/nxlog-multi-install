# Automate NXLOG installation

Automates the process of installing `nxlog` on multiple VMs. The script reads from a text file with each line in the format `user@ip` and installs `nxlog` on each VM.

The script will read the ip.txt file line by line and install nxlog on each VM. If the installation is successful, it will print “user@ip Installation Successful”.

## Prerequisites

- A main VM from which to run the script
- One or more slave VMs on which to install `nxlog`
- SSH key-based authentication set up from the main VM to each slave VM
- The `nxlog` installer located in the `/home` directory on the main VM
- Dependecies ready


## Getting Started

- Run `$ ssh-keygen -t rsa` on your main machine. This generate private and public key
- Update `ip.txt` info. username@ip
- Run `sshcopyip.sh` to copy public keys to slave VMs
- Run `sshchecker.sh` to check SSH connection
- Change the installer name & path on `xferfiles.sh`  then run it. 
- Change the installer name & path on `ssh_file-install.sh`  then run it. Upon finish installing, it will show a succesful massage with IP address.
