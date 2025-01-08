#!/bin/bash

release_file=/etc/os-release

if grep -q "arch" $release_file
then
    # For host on Arch 
    sudo pacman -Syu
elif grep -q "debian" $release_file || grep -q "ubuntu" $release_file
then
    # For Debian or Ubuntu host
    sudo apt update
    sudo apt dist-upgrade
else
    echo "No host found"
fi
