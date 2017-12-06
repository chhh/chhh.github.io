#!/bin/bash

allowed_dir="chhh.github.io"

if [ ${PWD##*/} != "src" ]; then
	echo "You must be in 'src' direcotry to execute this script"
	exit 1
fi

cd ..
cur_dir=${PWD##*/}

printf "Upper level dir: %s\n" $cur_dir
if [ $cur_dir == "$allowed_dir" ]; then
	echo "Removing old content:"
	ls | grep -v src 
	ls | grep -v src | xargs rm -rf
	cd src
	echo "Copying new contenst:"
	ls public/*
	cp -r public/* ..
else
	echo "You must be in $allowed_dir/src to execute this script"
fi


# cp public/* ..

