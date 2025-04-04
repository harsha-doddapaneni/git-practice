#!bin/bash

NUMBER=$1

if [ $NUMBER -gt 20 ]
then
    echo "given no: $NUMBER is greater then 20"
else
    echo "given no: $NUMBER is lessthen 20"
fi