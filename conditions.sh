#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 20 ] #gt, lt, eq, -ne, -ge, -le
then
    echo "given no: $NUMBER Is greater than 20"
else
    echo "given no: $NUMBER Is less than 20"
fi