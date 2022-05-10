if diff -r -q m6/sync_dir m6/storage; then
echo "these files are the same"
else
echo "these files are not the same"
cp m6/sync_dir/* m6/storage/
fi

# add in cron:
# */1 * * * * root ./home/u/GitHub/DevOps_online_Kharkiv_2022_1/m6/scripts/scr_c.sh
