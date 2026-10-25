#!/bin/bash
today=$(date)
current_user=$(whoami)
host_name=$(hostname)
echo "System Health Check Tool"
echo "------------------------"
echo
echo "Today: $today"
echo
echo "Username": "$current_user"
echo
echo "Hostname": "$host_name"
echo
echo "Kernel":   $(uname -r)
echo
echo "Architecture": $(uname -m)
echo
echo "Uptime": $(uptime -p)
echo
echo "Disk Usage":
 df -h /
echo
echo "Memory Usage":
free -h
echo
echo "Network Interfaces":

if command -v ip  > /dev/null
 
then

	ip -br a
else
	echo " ip command not found"
fi
