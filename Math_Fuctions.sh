#!/bin/bash

#Math functions 

expr 30 + 10
expr 30 - 10
expr 30 / 10
expr 100 \* 4

num1=100
num2=200

echo $num1
expr $num1 + $num2
./Variables.sh
#echo $num1 + $num2 - not possible in bash
