#!/bin/bash

allowed_dir="chhh.github.io"

if [ ${PWD##*/} != "src" ]; then
	 printf"\n\nYou must be in 'src' direcotry to execute this script.\n"
	exit 1
fi

cd ..
cur_dir=${PWD##*/}

printf "\nUpper level dir: %s\n" $cur_dir
if [ $cur_dir == "$allowed_dir" ]; then
	printf "\n\nRemoving old content:\n"
	ls | grep -v src 
	ls | grep -v src | xargs rm -rf
	cd src
	printf "\n\nBuilding new content...\n"
	rm -rf public
	hugo
	printf "\n\nCopying new content:\n"
	ls public/*
	cp -r public/* ..
	printf "\n\nRemoving temporary files.\n"
	rm -rf public
else
	printf "\n\nYou must be in $allowed_dir/src to execute this script\n"
fi

