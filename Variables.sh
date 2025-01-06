#!/bin/bash

#This scrript is for learning how to declare variables.

#Strings
myName="Babatunde"
myAge="28"
now=$(date)
files=$(ls)


echo "Hello, my name is $myName"
echo "I'm $myAge years old"

echo $files



echo "Hello $myName"
echo "The system time and date is:" $now
echo "Your username is: $USER"

 env
