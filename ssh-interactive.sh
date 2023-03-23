#!/bin/bash

#This is an interactive script for using ssh
#

echo "Insert the ip addres to connect to:"

seq -f "192.168.0.%1g" 10;

read b;

echo "Insert the private key:"

read c;

ssh -i $c ubuntu@$b

exit 0
