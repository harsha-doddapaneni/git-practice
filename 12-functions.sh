#!/bin/bash

USERID=$(id -u)
#echo "User ID is: $USERID"

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "$2 is..FAILED"
    else
        echo "$2 is...SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed git

VALIDATE $? "Listing git"

# if [ $? -ne 0 ]
# then
#     echo "Git is not installed, going to install it..."
#     dnf install git -y
#     if [ $? -ne 0 ]
#     then
#         echo "Git installation is not success.... check it"
#         exit 1
#     else
#         echo "Git installation is success"
#     fi
# else
#     echo "Git is already installed, nothing to do..."
# fi

# dnf list installed mysql

# if [ $? -ne 0 ]
# then
#     echo "Mysql is not installed...going to install it"
#     dnf install mysql -y
#     if [ $? -ne 0 ]
#     then
#         echo "Mysql installation is failure"
#         exit 1
#     else
#         echo "Mysql installation is success"
#     fi
# else
#     echo "Mysql is already installed. nothing to do.."
# fi
