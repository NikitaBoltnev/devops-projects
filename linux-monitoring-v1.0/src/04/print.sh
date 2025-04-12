#!/bin/bash

hostname=$(hostname)
timezone=$(cat /etc/timezone)
utc=$(date +"%-:::z")
user=$(whoami)
os=$(cat /etc/issue | tr -d '\n' | perl -pe 's/\\[lnr]//g')
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

reset="\033[0m"


echo -e "$1HOSTNAME$reset = $2$hostname$reset"
echo -e "$1TIMEZONE$reset = $2$timezone UTC $utc$reset"
echo -e "$1USER$reset = $2$user$reset"
echo -e "$1OS$reset = $2$os$reset"
echo -e "$1DATE$reset = $2$date$reset"
echo -e "$1UPTIME$reset = $2$uptime$reset"
echo -e "$1UPTIME_SEC$reset = $2$uptimeSec$reset"
echo -e "$1IP$reset = $2$ip$reset"
echo -e "$1MASK$reset = $2$mask$reset"
echo -e "$1GATEWAY$reset = $2$gateway$reset"
echo -e "$1RAM_TOTAL$reset = $2$ramTotal$reset"
echo -e "$1RAM_USED$reset = $2$ramUsed$reset"
echo -e "$1RAM_FREE$reset = $2$ramFree$reset"
echo -e "$1SPACE_ROOT$reset = $2$spaceRoot$reset"
echo -e "$1SPACE_ROOT_USED$reset = $2$spaceRootUsed$reset"
echo -e "$1SPACE_ROOT_FREE$reset = $2$spaceRootFree$reset"