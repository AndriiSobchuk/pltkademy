#!/bin/bash


# file where hostname, cpu cores number. total memory and disk size will be stored
FNAME="host_data.txt" 

#create a file
touch $FNAME

#write system parameters into a host_data file

#add hostname
hostname >> $FNAME
#add cpu cores number
cat /proc/cpuinfo | grep "cpu cores" | uniq >> $FNAME 
#add total memory
grep MemTotal /proc/meminfo  >> $FNAME
#add total disk size
df -m >> $FNAME
