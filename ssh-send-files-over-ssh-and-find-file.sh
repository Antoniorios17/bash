#!/bin/bash

scp -i Cali1.pem /home/antonio/bin/Antonio.txt ubuntu@3.82.96.71:/home/ubuntu

ssh -i Cali1.pem -t ubuntu@3.82.96.71 "find Antonio.txt"
