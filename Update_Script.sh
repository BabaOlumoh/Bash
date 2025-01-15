#!/bin/bash

release_file=/etc/os-release
logfile=~/Boring_Stuff/Bash/logFiles/updater.log
errorlog=~/Boring_Stuff/Bash/logFiles/updater_errors.log

exit_status(){
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check $updater_errors.log."
    fi 
}

if grep -q "arch" $release_file
then
    # For host on Arch 
    sudo pacman -Syu >$logfile 2>$errorlog
    exit_status
elif grep -q "debian" $release_file || grep -q "ubuntu" $release_file
then
    echo "This script ran on the $(date)" >>$logfile 

    # For Debian or Ubuntu host
    sudo apt update >>$logfile 2>>$errorlog
    exit_status

    sudo apt dist-upgrade -y >>$logfile 2>>$errorlog
    exit_status
else
    echo "No host found"
fi
