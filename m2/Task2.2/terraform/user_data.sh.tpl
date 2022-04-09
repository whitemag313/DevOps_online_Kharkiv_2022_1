#!/bin/bash
yum -y update
yum -y install httpd
mkdir /var/www/html/styles ; touch /var/www/html/styles/style1.css
mkdir /var/www/html/images ; wget -P /var/www/html/images https://github.com/whitemag313/test/blob/main/image.png
cat <<EOF > /var/www/html/styles/syle1.css
h1 {
  font-family: 'Lobster', cursive;
  color: green;
}
EOF

# myip=`curl http://192.254.169.254/latest/meta-data/local-ipv4`

cat <<EOF > /var/www/html/index.html
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

  <p><img src="images/image.png"></p>

  <p>I take courses from EPAM. Before that I worked with AWS EC2 and Terraform,
    <br>but this is were in test envoirment, not in production. Also alredy knew about Elastic IP and S3. </p>
</body>
</html>
EOF

sudo service httpd start
chkconfig httpd on
