#!/bin/bash

USERID=$(id -u)
#echo "User ID is: $USERID"

CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo "Please run this script with root priveleges"
        exit 1
    fi
}

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "$2 is..FAILED"
    else
        echo "$2 is...SUCCESS"
    fi
}

CHECK_ROOT

dnf list installed git

VALIDATE $? "Listing git"

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it..."
    dnf install git -y
    VALIDATE $? "Installing git"
else
    echo "Git is already installed, nothing to do..."
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "Mysql is not installed...going to install it"
    dnf install mysql -y
    VALIDATE $? "Installing Mysql"
else
    echo "Mysql is already installed. nothing to do.."
fi