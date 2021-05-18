#!/bin/bash

echo "$1 is your first argument"
echo "$2 is your second argument"
echo "This script is called $0"

echo "This script displays basic information about our system"
uname -a
echo "This is a tree of your pwd"
tree

echo "This is your home" $HOME
echo "this is your shell" $SHELL
echo "This is your username" $USER
echo "Now I will list all the files in your Downloads directory"
ls $HOME/Downloads
ls /home/$USER/Downloads

#Environment variables are always uppercase, and must be prefaced with $


echo "
Hello there!"
read -p "What's your name? " name
echo "Hi $name!"
read -p "What is your favorite color? " color
echo "I like $color too!"
read -p "When will the world end? " doomsday
echo "$doomsday! Nice answer lol"

echo "$* is all the arguments"

list_of_files=$(ls -lhaX)
echo "This is list_of_files $list_of_files"


if pwd
then
	echo "It worked!"
fi

