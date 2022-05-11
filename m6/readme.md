# Task 6.1

##Script A

```
#!/bin/bash

echo "This is scrypt using two keys: --all and --target.
  Please use it.
  --hip key displays the IP addresses and symbolic names of all hosts in the current subnet
  --tcpp key displays a list of open system TCP ports"

while [ -n "$1" ]
do
case "$1" in
           --hip) echo "Name of hosts and IP addresses :"
                hostnamectl | grep -i hostname
                ip addr | grep -i inet;;
           --tcpp) echo "Open system TCP ports:"
                netstat -lt;;
               *) echo "Enter somting key!"
                echo "--hip key displays the IP addresses and symbolic names of all hosts in the current subnet"
                echo "--tcpp key displays a list of open system TCP ports";;
esac
shift
done
```
Result:

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m6/scrshots/scr_a.png)

##Script B:

```
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
```
Result:

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m6/scrshots/scr_b.png)

##Script C:

```
#!/bin/bash

if diff -r -q [Path_to_file]/m6/storage [Path_to_file]/m6/sync_dir;
#to made it more readble I change full path on - [Path_to_file]
then
echo "these files are the same"
else
echo "these files are not the same, made copy"
cp [Path_to_file]/m6/sync_dir/test.txt [Path_to_file]/m6/storage/test.txt
fi

# add in cron:
# */1 * * * * root ./home/u/GitHub/DevOps_online_Kharkiv_2022_1/m6/scripts/scr_c.sh

```
Result:

made different files

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m6/scrshots/rnd_test_test.png)

Start scipt:

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m6/scrshots/scr_c.png)
