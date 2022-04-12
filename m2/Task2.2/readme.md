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

And now need to create the instance and configure the server. To solve this I will use Terraform. Create a simple Terraform file:

```
provider "aws" {
  region     = "eu-central-1"
  access_key = "AKIA4DXLWMAUPEJGW7ML"
  secret_key = "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"
}

resource "aws_eip" "my_static_ip" {
  instance = aws_instance.my_web_server.id
}

resource "aws_instance" "my_web_server" {
  ami                    = "ami-04c921614424b07cd"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.my_web_server.id]
  user_data = templatefile("user_data.sh.tpl", {
  })


  tags = {
    Name  = "Web Server Build By Terraform"
    Owner = "MT"
  }
}



resource "aws_security_group" "my_web_server" {
  name = "Dynamic Sec Group"

  dynamic "ingress" {
    for_each = ["80", "443", "8080", "22"]
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = "Dynamic sec group"
    Owner = "MT"
  }
}
```

In outputs we can see public IP.

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m2/Task2.2/screenshots/terraform_apply_out.png)

Next we need attach domain name to IP (i use free domain name pp.ua on nic.ua):

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m2/Task2.2/screenshots/domain_ip.png)

Web-site ready:

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m2/Task2.2/screenshots/website.png)
