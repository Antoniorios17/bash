#!/bin/bash

# This is a Bash script that performs prints out messages, creates a directory, extracts group information, and provides navigation.

# Print a message indicating the start of script execution
printf "Executing script\n"

# Pause for 2 seconds to simulate a delay
sleep 2

# Print a message indicating the creation of a directory named 'results'
printf "Creating directory 'results'\n"

# Pause for another 2 seconds
sleep 2

# Create a directory named 'results' in the /home/ubuntu path
mkdir -p /home/ubuntu/results

# Extract the list of groups that the 'ubuntu' user belongs to,
# then save it to a file named 'ubuntugrps.txt' within the 'results' directory
groups ubuntu | cut -d " " -f3- > /home/ubuntu/results/ubuntugrps.txt

# Print a message indicating the transfer of the list of groups for Ubuntu
printf "Transferring the list of groups for Ubuntu\n"

# Pause for 2 seconds
sleep 2

# Print a message informing the user about navigation
printf "You are going to be transferred to the 'results' directory\n"

# Change the current working directory to /home/ubuntu/results
cd /home/ubuntu/results

# Start a new shell session in the 'results' directory
exec bash
