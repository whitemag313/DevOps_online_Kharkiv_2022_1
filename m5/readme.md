#Task 5.1

###Start settings:
```
Net1 - 192.168.1.0/24
Net2 - 10.98.10.0/24
Net3 - 10.6.10.0/24
Net4 - 172.16.10.0/24

Server_1:
Interface1 -
Interface2 - 10.98.10.1
Interface3 - 10.6.10.1

Client1:
Interface1 (Net2) - 10.98.10.2
Interface2 (Net4) - 172.16.10.1

Client2:
Interface1 (Net3) - 10.6.10.2
Interface2 (Net4) - 172.16.10.2
```

network:
   ethernets:
        enp0s8:
            dhcp4: no
            addresses: [10.98.10.1/24]
            gateway4: 10.98.10.1
            nameservers:
              addresses: [8.8.8.8, 1.1.1.1]

        enp0s9:
            dhcp4: no
            addresses: [10.6.10.1/24]
            gateway4: 10.6.10.1
            nameservers:
               addresses: [8.8.8.8, 1.1.1.1]
