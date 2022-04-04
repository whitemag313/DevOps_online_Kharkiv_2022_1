

Enter in a system as root with command ``` sudo -s" ``` . After this changed password with command ```passwd``` and see changes in file "etc\shadow"

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
