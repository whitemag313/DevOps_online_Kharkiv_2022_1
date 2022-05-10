#!/bin/bash

echo Most frequncy ip:
echo _______________________
awk '{ print $1}' /home/u/GitHub/DevOps_online_Kharkiv_2022_1/m6/apache_logs.txt | sort | uniq -c | sort -nr | head -n 15


echo Most frequncy page:
echo _______________________
awk '{ print $7}' /home/u/GitHub/DevOps_online_Kharkiv_2022_1/m6/apache_logs.txt | sort | uniq -c | sort -nr | head -n 20
echo _______________________
awk '{ print $4}' /home/u/GitHub/DevOps_online_Kharkiv_2022_1/m6/apache_logs.txt | sort | uniq -c | sort -nr | head -n 3
