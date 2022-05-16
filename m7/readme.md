# Task 7.1

### Part 1
Create DB - "devops_winter_2022" and table "devops_winter_table"

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m7/scr/db_%26_table.png)

To made it faster I create a file with data for DB and load it in.

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m7/scr/Screenshot%20from%202022-05-12%2012-21-03.png)

Check it :

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m7/scr/check_db.png)

Create user:
```CREATE USER 'user2'@'localhost' IDENTIFIED BY '123123qQ';```
And give him privilage SELECT with command:  ```GRANT SELECT ON devops_winter_2022.* TO user2@'localhost';```
Check it

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m7/scr/check_priv.png)

### Part 2

Made beckup DB with command:
```sudo mysqldump -u root -p devops_winter_2022 > dumpdev.sql```

![dump_db]()

Drop DB and create new with name "dev_2022"

![drop_db]()

Load from backup with command :
```sudo mysql -u root -p dev_2022 < dumpdev.sql ```

![restored_db]()

Create RDS on amazon, connect and create empty DB - "rds_dev_2022":
```mysql -h database-1.czgnjfnzxshk.eu-central-1.rds.amazonaws.com -P 3306 -u admin -p ```

![create_rds]()

![rds_1]()

Load our beckup and test it:

```mysql -h database-1.czgnjfnzxshk.eu-central-1.rds.amazonaws.com -P 3306 -u admin -p rds_dev_2022 < dumpdev.sql ```

Try to select data from table:

![test_rds_dump]()

### Part 3
