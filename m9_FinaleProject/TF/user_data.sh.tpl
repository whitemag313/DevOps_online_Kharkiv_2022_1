#!/bin/bash
sudo -s && yum -y update && /
yum install python3 git -y && /
pip3 install request pycoingecko

crontab -l > foocron && /
echo "0 * * * * python3 /home/ec2-user/parser_cg" >> foocron && /
crontab foocron
