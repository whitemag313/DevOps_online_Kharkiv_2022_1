#   TASK 2.2.1 - First Steps

###  1. Create instance

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m2/Task2.2/screenshots/create_instance.png)

### 2. Made snapshot for backup

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m2/Task2.2/screenshots/make%20a%20snapshot.png)

### 3. Create and attach disk
Create:

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m2/Task2.2/screenshots/create%20Disk%20D.png)

Atached and mouted:

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m2/Task2.2/screenshots/atached%20disk%20d.png)

Create folders test1,test2 and HelloW.txt on diskd

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m2/Task2.2/screenshots/craete%20some%20files.png)

### 4. Launch the second instance from backup

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m2/Task2.2/screenshots/create%20inst%20from%20snapshot.png)

### 5.  Attach disk to new instance

Detach disk from first instance, attach to new instance and check the info on diskd

<<<<<<< HEAD
![alt text] (https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m2/Task2.2/screenshots/mount%20disk%20to%20snap.png)

# TASK 2.2.2 - Simple WebSite

### Configure index.html

I decide to make my web-site on the instance using ngnix. First create free domain on nic.ua - miti.pp.ua, in  future I will attach to elastic IP on AWS.
The next I will write a little file - index.html:

```
<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <title>My WebSite For EPAM</title>
  <link rel="stylesheet" href="styles/style1.css">
</head>
 <body>

  <center><h1>EPAM DevOps online Winter 2022</h1></center>
  <hr size="3" color="black" width="50%" aling="left">


  <h2>Hello!
    <br>My Name is Michael Timchenko</br> </h2>

  <p><img src="images/My_photo.jpg"></p>

  <p>I take courses from EPAM. Before that I worked with AWS EC2 and Terraform,
    <br>but this is were in test envoirment, not in production. Also alredy knew about Elastic IP and S3. </p>
</body>
</html>
```
### Create a Web-Site
And now need to create the instance and configure the server. To solve this I will use Terraform.
=======
![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m2/Task2.2/screenshots/mount%20disk%20to%20snap.png)
