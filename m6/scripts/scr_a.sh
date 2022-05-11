#!/bin/bash

echo "This is scrypt using two keys: --all and --target."
echo " Please using it.--all key displays the IP addresses and symbolic names of all hosts in the current subnet"
echo " --target key displays a list of open system TCP ports"

while [ -n "$1" ]
do
case "$1" in
           --all) echo "Name of host and IP addresses :"
                hostnamectl | grep -i hostname
                ip addr | grep -i inet;;
           --target) echo "Open system TCP ports:"
                netstat -lt;;
               *) echo "Enter somting key!"
                echo "--all key displays the IP addresses and symbolic names of all hosts in the current subnet"
                echo "--target key displays a list of open system TCP ports";;
esac
shift
done
