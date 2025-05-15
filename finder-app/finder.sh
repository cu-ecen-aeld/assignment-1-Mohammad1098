#!/bin/sh

#Test if user did not specify the correct args
if [ $# -lt 2 ];
then
	echo "Error Arguments must be dir path and word to search"
	exit 1
fi

#test if arg1 which is the dir path is a correct dir in system
if [ -d $1 ];
then
	filesdir=$1
	searchstr=$2
else
	echo "Error dir path is not exists!"
	exit 1
fi

X=`find $1 -type f | wc -l`
Y=`grep -o -r $2 $1 | wc -l`
echo "The number of files are $X and the number of matching lines are $Y"

