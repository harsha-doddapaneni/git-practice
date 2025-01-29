#!/bin/bash

USERID=$(id -u)
#echo "USERID is: $USERID"
if [ $USERID -ne 0 ] #1001
then
    echo "please run this script with root priveleges"
    exit 1
fi

#dnf list installed git

#if [ $? -ne 0 ]
