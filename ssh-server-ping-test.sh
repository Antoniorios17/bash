#!/bin/bash
#This is interactive script
#The reply will let you know that the computer is up or down

ping -c1 -W1 3.82.96.71 && echo 'Server is up' || echo 'Server is down';

ssh -i Cali1.pem ubuntu@3.82.96.71;
