#!/bin/bash

USERID=$(id -u)
#echo "USERID is: $USERID"
if [ $USERID -ne 0 ]
then
    echo "please run this script with root priveleges"
fi

dnf install git -y
