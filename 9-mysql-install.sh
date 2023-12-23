#!/bin/bash 
ID=$(id -u)
if [ $ID -ne 0 ]
then 
echo "error:: please run script with root"
exit 1
else 
echo "you are root user"
fi 

yum install mysql -y

if [ $? -ne 0 ] 
then 
echo "error:: installing mysql is failure"
exit 1
else 
echo "installing mysql is success"
fi
 
yum install git -y 

if [ $? -ne 0 ] 
then 
echo "error:: installing mysql is failure"
exit 1
else 
echo "installing git is success"
fi