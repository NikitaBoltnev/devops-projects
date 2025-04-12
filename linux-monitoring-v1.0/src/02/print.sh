#!/bin/bash

hostname=$(hostname)
timezone=$(cat /etc/timezone)
utc=$(date +"%-:::z")
user=$(whoami)
os=$(cat /etc/issue)
date=$(date | awk '{printf $2 " " $3 " " $4 " " $5}')
uptime=$(uptime -p | cut -d ' ' -f2-)
uptimeSec=$(cat /proc/uptime | cut -d ' ' -f 1)
ip=$(ip a | grep 'inet ' | cut -d '/' -f 1 | awk 'NR==2' | awk '{print $2}')
mask=$(ip a | grep 'inet' | cut -d '/' -f 2 | awk 'NR==3' | awk '{print $3}')
gateway=$(ip r | awk 'NR==1' | awk '{print $3}')
ramTotal=$(free -m | grep Mem | awk '{printf "%.3f GB\n", $2/1024}')
ramUsed=$(free -m | grep Mem | awk '{printf "%.3f GB\n", $3/1024}')
ramFree=$(free -m | grep Mem| awk '{printf "%.3f GB\n", $4/1024}')
spaceRoot=$(df -k / | awk 'NR==2' | awk '{printf "%.2f MB\n", $2/1024}')
spaceRootUsed=$(df -k / | awk 'NR==2' | awk '{printf "%.2f MB\n", $3/1024}')
spaceRootFree=$(df -k / | awk 'NR==2' | awk '{printf "%.2f MB\n", $4/1024}')


echo "HOSTNAME = $hostname"
echo "TIMEZONE = $timezone UTC $utc"
echo "USER = $user"
echo "OS = $os"
echo "DATE = $date"
echo "UPTIME = $uptime"
echo "UPTIME_SEC = $uptimeSec"
echo "IP = $ip"
echo "MASK = $mask"
echo "GATEWAY = $gateway"
echo "RAM_TOTAL = $ramTotal"
echo "RAM_USED = $ramUsed"
echo "RAM_FREE = $ramFree"
echo "SPACE_ROOT = $spaceRootUsed"
echo "SPACE_ROOT_USED = $spaceRootUsed"
echo "SPACE_ROOT_FREE = $spaceRootFree"