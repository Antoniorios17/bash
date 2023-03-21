#!/bin/bash

#welcome message

echo "Welcome to the Package checker";
echo  "Please insert Package name";

read -p '--> ' package ;

#This command will test if the package is installed on the computer at the moment
test=$(dpkg-query -W -f='${Status}\n' $package)


#If the package exist you will get an answer about the specific package
case $test  in
	"install ok installed") echo "Package is currently installed on the computer";;
	*) echo "Package is not currently installed or does not exist";;
esac

