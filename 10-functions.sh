#!/bin/bash 
ID=$(id -u)
VALIDATE(){
if [ $1 -ne 0 ] 
then 
echo "error:: $2.... is failure"
exit 1
else 
echo "$2... is success"
fi
}

if [ $ID -ne 0 ]
then 
echo "error:: please run script with root"
exit 1
else 
echo "you are root user"
fi 

yum install mysql -y

VALIDATE $? installing mysql

yum install git -y 
VALIDATE $? installing mysql

