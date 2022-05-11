#!/bin/bash

echo "This is scrypt using next keys:
 --ip - most frequncy ip.
 --page - most frequncy page.
 --time - most frequncy time.
 --uaip - ip and user agents.
"

while [ -n "$1" ]
do
case "$1" in
           --ip)
           echo "Most frequncy ip :"
           awk '{print $1}' /home/u/GitHub/DevOps_online_Kharkiv_2022_1/m6/apache_logs.txt | sort | uniq -c | sort -nr | head -n 15;;
           --page)
           echo "Most frequncy page :"
           awk '{print $7}' /home/u/GitHub/DevOps_online_Kharkiv_2022_1/m6/apache_logs.txt | sort | uniq -c | sort -nr | head -n 20;;
           --time)
           echo "Most frequncy time :"
           awk '{print substr($4, 2, 17)}' /home/u/GitHub/DevOps_online_Kharkiv_2022_1/m6/apache_logs.txt | sort | uniq -c | sort -nr | head -n 5;;
           --uaip)
           echo "ip & user agents :"
           awk '{print $1, $12 }' /home/u/GitHub/DevOps_online_Kharkiv_2022_1/m6/apache_logs.txt | sort | uniq -c | sort -nr | head -n 25;;
               *) echo "Enter somting key!"
esac
shift
done
