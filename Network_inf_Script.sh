#!/bin/bash

echo " Bash Script that dump my network information"
echo "Ip Address".
#Show the  ip addres and other information of my network
echo  $(ip a)
echo "-------------------------------------------------------------------"

#Show  my open ports
echo "Information about my ports"
echo $(netstat -s)
echo "-------------------------------------------------------------------"
#print the host name
echo "Hostname"
echo $(hostname)
echo "-------------------------------------------------------------------"
echo "Dns Name"
echo $(dig)
echo "--------------------------------------------------------------------"
#Print Running process 
echo  "Running Process"
echo $(netstat -tulpen)
echo "--------------------------------------------------------------------"
#Print a list of the current logged users 
echo  "Logged users, log time etc"
echo $(w)

echo "-------------------------------------------------------------------"
#print date
echo "Date"
echo $(date)

