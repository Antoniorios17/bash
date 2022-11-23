#!/bin/bash


###############################################################################################################################
#
#Script Name    :       process.sh
#Description    :       Check system processes and warn the user about high memory processes
#Date		:	8-14-2022 
#Author         :       Antonio Rios
#Notes		:	This script is limited to only terminate the top 5 processes that are consuming more than 5% of the available memory
################################################################################################################################



printf "Welcome\n\nChecking for high memory usage processes\n\n";
sleep 1

printf 'The following processes are consuming more than 7%% of your available memory\n\n';

#This command will check for all processes and sort them out for highest memory consumption

ps -eo pid,%mem,command,user --sort -%mem | head -n 10 | awk -F ' ' '{print $1,$2,$3}' | awk 'NR==1 ||''$2>=7';

#This command will create a list of the process IDs of the top 5 processes consuming the most memory and store it into a file for later use

ps -eo pid,%mem,command,user --sort -%mem | awk -F ' ' '{print $1,$2,$3}' | awk '$2>=7' | awk -F ' ' '{print $1}' > /home/antonio/bin/kill.txt;
printf "\n\n"
printf "Would you like to kill all high memory usage processes? \n"

read -p 'Type yes or no ---> ' answer;

#these variables store the process IDs of the top 5 processes to be terminated

ps1=$(cat /home/antonio/bin/kill.txt | sed '1!d')
ps2=$(cat /home/antonio/bin/kill.txt | sed '2!d')
ps3=$(cat /home/antonio/bin/kill.txt | sed '3!d')
ps4=$(cat /home/antonio/bin/kill.txt | sed '4!d')
ps5=$(cat /home/antonio/bin/kill.txt | sed '5!d')

#This command will take the aproval of the user to terminate the top 5 memory consuming processes all at the same time

case $answer in
	yes) $(kill -9 $ps1 && kill -9 $ps2 && kill -9 $ps3 && kill -9 $ps4 && kill -9 $ps5);;
	*) exit 0;;
esac

