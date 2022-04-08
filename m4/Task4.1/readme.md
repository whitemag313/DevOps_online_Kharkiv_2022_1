

Enter in a system as root with command ``` sudo -s ``` . After this changed password with command ```passwd``` and see changes in file "etc\shadow"

Before change
```
root@epamlinux:~# cat /etc/shadow
root:*:18863:0:99999:7:::
```

 after changed
```
root@epamlinux:~# cat /etc/shadow
root:$6$Mh.9FcWRhhAQoGb8$7P3rX29nJGeIEa5ftUpbT.An2Gu1RYwPcMKIb.ch8k44LJv/6lj.0CJUnsnvAHbTBhXLJY/ZFh7L3a4s/pm8T/:19082:0:99999:7:::
```
You can see the changes in field "root"

In this file we can see all registered in the system. We also can view all registered users in /etc/passwd. If we need only the names we can use command ```compgen -u``` .

Example ```cat /etc/shadow```
```
root@epamlinux:~# cat /etc/shadow
root:$6$Mh.9FcWRhhAQoGb8$7P3rX29nJGeIEa5ftUpbT.An2Gu1RYwPcMKIb.ch8k44LJv/6lj.0CJUnsnvAHbTBhXLJY/ZFh7L3a4s/pm8T/:19082:0:99999:7:::
daemon:*:18863:0:99999:7:::
bin:*:18863:0:99999:7:::
sys:*:18863:0:99999:7:::
sync:*:18863:0:99999:7:::
games:*:18863:0:99999:7:::
man:*:18863:0:99999:7:::
lp:*:18863:0:99999:7:::
mail:*:18863:0:99999:7:::
news:*:18863:0:99999:7:::
uucp:*:18863:0:99999:7:::
proxy:*:18863:0:99999:7:::
www-data:*:18863:0:99999:7:::

...

mt:$6$J7lrpSmW6EajBVRT$fJBktZ8MlrgRk3J5vwIfWMyeUCz.apVyf5Imxe3BmI6LoqpcDMMr9fu2JgK9EpIU36sNLE0cxmsNCdVDpji0o1:19082:0:99999:7:::
lxd:!:19082::::::
```
To change the info about user need to use command ```chfn [username]```

![alt text]()

Can see changes in /etc/passwd

```mt:x:1000:1000:Michael,777,000-000,111-111,other inf:/home/mt:/bin/bash```
