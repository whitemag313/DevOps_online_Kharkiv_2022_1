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
