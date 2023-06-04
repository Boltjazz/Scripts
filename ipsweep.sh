#!/bin/bash
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":"&
done
#this script will grab all the ip that have an active connection to your router
#to run it , download it , modify permission to executable , ./ipsweep.sh[current ip eg- 192.168.0]
