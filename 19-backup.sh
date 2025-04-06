#!/bin/bash

SOURCE_DIR=$1
DEST_DIR=${2}
DAYS=${3:-14} #if $3 is empty, default is 14 days.
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

USAGE(){
    echo -e "$R USAGE:: $N sh 19-backup.sh <source> <destination> <days(optional)>"
}


if [ $# -lt 2 ]
then
    USAGE
fi

if [ ! -d $SOURCE_DIR ]
then
    echo "$SOURCE_DIR does not exist...Please check it.."
fi

if [ ! -d $DEST_DIR ]
then
    echo "$DEST_DIR does not exist...Please check it.."
fi

FILES=$(find ${SOURCE_DIR} -name "*.log" -mtime +$DAYS)

echo "Files: $FILES"

if [ ! -z $FILES ]
then
    echo "Files are found"
    ZIP_FILE="$DEST_DIR/app-logs-$TIMESTAMP.zip"
    find ${SOURCE_DIR} -name "*.log" -mtime +14 | zip "$ZIP_FILE" -@

    if [ -f $ZIP_FILE ]
    then
        echo "Successfully zipped files older than $DAYS"

        while IFS= read -r file
        do
            echo "Deleting file: $file"
            rm -rf $file
        done <<< $FILES
    else
        echo "Zipping the files is failed"
        exit 1
    fi
else
    echo "NO files older than $DAYS"
fi