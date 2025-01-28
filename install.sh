#!/bin/bash

USERID=$(id -u)
#echo "userid is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "plese run this script with root priveleges"
fi

dnf install git -y