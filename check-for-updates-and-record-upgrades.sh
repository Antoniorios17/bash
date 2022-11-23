#!/bin/bash

#############################################################
#
# Script Name   	: 	Server.sh
# Description   	:	  Perform server maintenance
# Author		      :  	Antonio Rios
#
#############################################################

today="$(date +%m_%d_%y_%T)";
#this command will check for available updates
apt update;
sleep 1;

#this command creates a directory called updates only if it doesn't exist 

#mkdir -p ~/bin;

touch /home/antonio/bin/"server_$today.txt";

#bash;
apt -y upgrade >> /home/antonio/bin"server_$today.txt";



