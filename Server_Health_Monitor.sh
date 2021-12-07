#!/bin/bash

#Script that will monitor the healt of my server.

#Print the hostname

 echo "
      ****************************************************************

                      SERVER HEALTH MONITORING REPORT

      ****************************************************************"
#Print an space for a better look of the information
echo "

"
echo "--------------General Information--------------"
echo "
" > MoinitoringScript.txt
#get just the ip add with the command ifconfig
Ipadd=$( ifconfig | grep "broadcast" | cut -d " " -f 10 | uniq)
echo "IP Addresses : " $Ipadd 
#Load average
Load=$(cat /proc/loadavg)
echo "Load Average : " $Load
Hostname=$(hostname)
echo "Hostname :  " $Hostname
#get just the kernel version
Kernel=$( hostnamectl | awk '/Kernel/{print $2 " " $3}')
echo "Kernel Version : " $Kernel
#get just the System name
OPname=$( hostnamectl | awk '/Operating System/{print $3 " " $4}')
echo "Operating System : " $OPname
echo "
"
#Print cpu statistics about the cpu
echo '--------------CPU Information----------------'
echo "
"
#Get just the information about the  user usage
cpuusedbyuser=$( iostat -c | awk '/    / {print $1}')
echo "Cpu Used by users: " $cpuusedbyuser

#Get just the information about the   system
cpuusedbysys=$( iostat -c | awk '/    / {print $3}')
echo "CPU Used By System :  " $cpuusedbysys 

#Get just the information about the time when the server did not received any request
norequest=$( iostat -c | awk '/    / {print $6}')
echo "Cpu With no Request : " $norequest
echo "
"

echo '--------------Memory Information--------------'
echo "
"

#Get just  Total memory of the system
TotalMem=$( awk '/MemTotal/ {print $2}' /proc/meminfo)
echo "Total Memory: " $TotalMem

#Get just the free space on the memory
Freememo=$( awk '/MemFree/ {print $2}' /proc/meminfo)
echo "Free Memory : " $Freememo

#Get just the available space
AvailableSpa=$( awk '/MemAvailable/ {print $2}' /proc/meminfo)
echo "Available Space : " $AvailableSpa

echo "
"
echo "--------------Active Processes--------------"
#Shows the active processes
echo "
"
#get the result Of the PID
Process=$(ps | awk '{print $1}')
echo $Process
#Got bthe result of TTY
Process2=$(ps | awk '{print $2}')
echo $Process2
#Get the Result of  the Time
Process3=$(ps | awk '{print $3}')
echo $Process3
#Get the resul of the CMD
Process4=$(ps | awk '{print $4}')
echo $Process4
echo "
"
#print the infroamtion abaut the disk
echo "--------------Disk Information----------------"

echo "
"
Disk=$(df -h | awk '/Filesystem/{print $1,"\t",$2,"\t",$3,"\t",$4 }')
echo $Disk
Disk1=$(df -h | awk '/sda/{print $1,"\t",$2,"\t",$3,"\t",$4 }')
echo $Disk1
echo "
"
#Print the date, logged ussers, system uptime and if is  Online or Offiline
#Print loged user 
echo "--Current Logged Users , System Uptime and Date--"
echo "
"
Who=$(who | awk '{print $1,"\t",$2 }')
echo "Logged User : " $Who
#print the system Uptime
Uptime=$(uptime | awk '{print $3}' | tr -d ",")
echo "System Up Time : " $Uptime
#Print the current date
Date=$(date | awk '{print $1,$2, $3,$4,$6}' | tr -d ",")
echo "Current Date : " $Date
Conection=$(ping -c1 youtube.com &>/dev/null && echo "online" || echo "offline")
echo "Conection Status : " $Conection
echo "
"
