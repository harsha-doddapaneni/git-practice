#!bin/bash

NUMBER1=$1

if [ $NUMBER1 -gt 20 ]
then
    echo "given no: $NUMBER1 is greater then 20"
else
    echo "given no: $NUMBER1 is less then 20"
fi

NUMBER2=$2

if [ $NUMBER2 -lt 30 ]
then
    echo "given no: $NUMBER2 is less then 30"
else
    echo "given no: $NUMBER2 is greater than 30"
fi