#!/bin/bash

echo "Welcome to the Package checker";
echo  "Please insert Package name";

read -p '--> ' package ;

#This command will test if the package is installed on the computer
test=$(dpkg-query -W -f='${Status}\n' $package)


#In this part if the package exist 
case $test  in
	"install ok installed") echo "Package is currently installed on the computer";;
	*) echo "Package is not currently installed or does not exist";;
esac

