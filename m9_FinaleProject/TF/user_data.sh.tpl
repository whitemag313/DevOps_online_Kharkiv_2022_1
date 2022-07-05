#!/bin/bash
sudo -s && yum -y update
sudo yum install python3 git -y
pip3 install requests pycoingecko

crontab -l > foocron
echo "* * * * * python3 /home/ec2-user/parser_cg.py" >> foocron
crontab foocron
