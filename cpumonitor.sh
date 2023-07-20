#!/bin/bash

# Script to check the CPU usage every 10 seconds and output to a log file
for i in {1..2}
do printf "CPU usage during loop $i at time: \n" >> cpuusage1.log
date | tee -a  cpuusage1.log

# This will give you i'th iteration of top then stop, and then push it to a file.
top -n $i -b >> cpuusage1.log 
printf "\n" | tee -a cpuusage1.log 

sleep 10
done