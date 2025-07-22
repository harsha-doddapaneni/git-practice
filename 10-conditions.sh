#!bin/bash

NUMBER=$1

if [ $NUMBER -gt 20 ]
then
    echo "given no: $NUMBER is greater then 20"
else
    echo "given no: $NUMBER is less then 20"
fi

NUMBER=$2

if [ $NUMBER -lt 30 ]
then
    echo "given no: $NUMBER is less then 30"
else
    echo "given no: $NUMBER is greater than 30"
fi