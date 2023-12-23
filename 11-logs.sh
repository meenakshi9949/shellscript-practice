#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
TIMESTAMP=$(date +%F-%H-%M-%S)
echo "$TIMESTAMP"
ID=$(id -u)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
if [ $1 -ne 0 ] 
then 
echo -e "$R error:: $2 $3.... is failure $N"  
exit 1
else 
echo -e " $G $2 $3... is success $N"
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
VALIDATE $? "installing mysql" &>> $LOGFILE 

yum install git -y &>> $LOGFILE 
VALIDATE $? "installing git"
