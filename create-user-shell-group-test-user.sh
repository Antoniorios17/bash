#!/bin/bash

if [ $UID != 0 ]; 
 then
	echo "You need to be a superuser" 
	exit 1
fi


#ask for user first name and last name
#shell and group


echo "Please enter your First name";
read -p '--> ' first;

echo "Please enter your last name";
read -p '--> ' last;

echo "Enter your shell" ;
read -p '--> ' shell;

echo "Enter your group"
read -p '--> ' group;

echo "Enter your password" 
read -p '--> ' pass;

username=$(echo $last$(echo $first | cut -c 1));
echo "Your username is going to be $username";

sudo useradd -m $username -s $shell -p $pass;
sudo usermod -a -G $group $username;


echo "$username:$pass" | chpasswd
