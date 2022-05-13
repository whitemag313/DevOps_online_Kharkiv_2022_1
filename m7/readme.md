# Task 7.1

### Part 1
Create DB - "devops_winter_2022" and table "devops_winter_table"

![alt text]()

To made it faster I create a file with data for DB and load it in.

![alt text]()

Check it :

![alt text]()

Create user:
```
CREATE USER 'user2'@'localhost' IDENTIFIED BY '123123qQ';
```
And give him privilage SELECT with command
```
GRANT SELECT ON devops_winter_2022.* TO user2@'localhost';
```
Check it

![alt text]()

### Part 2

Made beckup DB with command:
```
sudo mysqldump -u root -p devops_winter_2022 > dumpdev.sql
```
