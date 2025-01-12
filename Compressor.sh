#!/bin/bash

if [ -d ~/Boring_Stuffs/Bash/logFiles ]
then 
    echo "Folder already exist"
else
    mkdir logFiles
    echo "New Folder Created"
fi
 
for file in logFiles/*.log
do
    tar -czvf $file.tar.gz $file
done

