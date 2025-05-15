#!/bin/sh

if [ $# -lt 2 ];
then
	echo "Args must be 2, full path to file and string to write it into file"
	exit 1
fi

if ! [ -f $1 ]; then
    echo "Path does not exists going to create it!"
    mkdir -p $(dirname $1) && touch $1

fi

writefile=$1
writestr=$2



echo "file is $writefile"
echo "string is $writestr"

echo > $1
echo $2 > $1
ret=$?
if [ "$ret" -ne 0 ];
then
	echo "Could not write $2 into $1"
	exit 1
fi
