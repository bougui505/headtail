#!/usr/bin/env zsh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier -- guillaume.bouvier@pasteur.fr
# https://research.pasteur.fr/en/member/guillaume-bouvier/
# 2017-11-16 10:03:08 (UTC+0100)

usage ()
{
	echo "Usage"
	echo "$0 filename"
	echo "Print the first and the last 10 lines of the file"
	echo "    -n NUM    print the first and the last NUM lines"
}

if [ $# -lt 1 ]; then
	usage
	exit
fi

if [[ $1 = "-h" ]]; then
	usage
	exit
fi

if [[ $1 = "-n" ]]; then
	N=$2
	FILENAME=$3
else
	N=10
	FILENAME=$1
fi

awk -v N=$N '{i+=1; data[i]=$0} END{for (j=1; j<=N; j++){print data[j]}; print "[...]"; for (k=i-N+1;k<=i;k++){print data[k]}}' $FILENAME
