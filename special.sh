#!/bin/bash
echo "all variables passed to script: $@"
echo "no of variables passed: $#"
echo "script name: $0"
echo " current working directry: $PWD"
echo " pid of script:$$"

sleep 100 &
echo "pid of last background cmd: $!"