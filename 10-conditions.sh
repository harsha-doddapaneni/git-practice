#!bin/bash

NUMBER1=$1

if [ $NUMBER1 -gt 20 ]
then
    echo "given no: $NUMBER1 is greater then 20"
else
    echo "given no: $NUMBER1 is less then 20"
fi