#!/bin/bash 
NUMBER=$1 
if  [ $NUMBER -ge 100 ]
then 
echo "given number $NUMBER is greater than or equal to 100" 
else 
echo "given number $NUMBER is less than 100"
fi