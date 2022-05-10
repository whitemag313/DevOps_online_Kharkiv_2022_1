#!/bin/bash

echo Most frequncy ip:
awk '{print $1}' /home/u/GitHub/DevOps_online_Kharkiv_2022_1/m6/apache_logs.txt | sort | uniq -c | sort -nr | head -n 15
echo _______________________

echo Most frequncy page:
awk '{print $7}' /home/u/GitHub/DevOps_online_Kharkiv_2022_1/m6/apache_logs.txt | sort | uniq -c | sort -nr | head -n 20
echo _______________________

echo Most frequncy time:
awk '{print substr($4, 2, 17)}' /home/u/GitHub/DevOps_online_Kharkiv_2022_1/m6/apache_logs.txt | sort | uniq -c | sort -nr | head -n 1
echo _______________________
