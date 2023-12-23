#!/bin/bash 
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIMESTAMP=$(date +%F-%H-%M-%s)
LOGFILE="/tmp/$0-$TMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
    echo -e " $2...IS $R FAILURE $R "
    exit 1
    else 
    echo "$2 ...is $G success $N"
    fi
}

if [ $ID -ne 0 ]
then 
echo "$R ERROR: please run this script with root access $N"
exit 1
else 
echo "you are root user"
fi    

for package in $@ 
do
yum list installed $PACKAGE &>> $LOGFILE
if [ $? -ne 0 ]
then 
yum install $package -y &>> $LOGFILE
VALIDATE $? "INSTAALLATION OF $PACKAGE"
else 
echo -e "$N $package IS already installed...$Y skipping"
fi    
done 