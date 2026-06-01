#!/bin/bash

DATE=$(date)

echo "================================" >> health_report.txt
echo "System Health Report - $DATE" >> health_report.txt
echo "================================" >> health_report.txt

echo -e "\nCPU Usage:" >> health_report.txt
top -bn1 | grep "Cpu(s)" >> health_report.txt

echo -e "\nMemory Usage:" >> health_report.txt
free -h >> health_report.txt

echo -e "\nDisk Usage:" >> health_report.txt
df -h >> health_report.txt

echo -e "\nRunning Processes:" >> health_report.txt
ps -e | wc -l >> health_report.txt

echo -e "\n" >> health_report.txt

echo "Report Generated Successfully"
