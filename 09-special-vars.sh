#!/bin/bash

echo "Script name: $0"
echo "Number of variables passed: $#"
echo "All variables passed to the script: $@"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "PID of script: $$"
sleep 100 &
echo "PID of last background command: $!"