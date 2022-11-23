#!/bin/bash


ping -c1 -W1 3.82.96.71 && echo 'Server is up' || echo 'Server is down';

ssh -i Cali1.pem ubuntu@3.82.96.71;
