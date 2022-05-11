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
