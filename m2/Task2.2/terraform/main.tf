provider "aws" {
  region = "eu-central-1"
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

resource "aws_eip" "my_static_ip" {
  instance = aws_instance.my_web_server.id
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
