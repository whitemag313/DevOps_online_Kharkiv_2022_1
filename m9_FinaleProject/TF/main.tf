provider "aws" {
  region = "eu-central-1"

}

resource "aws_eip" "my_static_ip" {
  instance = aws_instance.my_web_server.id
}

resource "aws_instance" "my_web_server" {
  ami                    = "ami-04c921614424b07cd"
  instance_type          = "t2.micro"
  key_name               = "jenkins-key"
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

resource "aws_key_pair" "deployer" {
  key_name   = "jenkins-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDpRlQ2flZdZbnhJZnmXQ9lh8vNDhpBnDSpuiTL6lYhDOpIPdvTEZS19pWaRfANj8vHLeUziAiMRd1vdOFC9G1pl/CSZfCMpavBIlqrbTyJfVj+oZdEvRSYYUTYF5omPzEpTUUxVAyFpKuhcs2GHpvjFmv4NNpr9ej7sRl+oFPSov3p5AiQ4+eE4p+LSG5OigI3FapCcDfH1QNjZnX1zC2hBkZrskA6AXxsMXlA2O1oH/MmrXyQcyfbwY1b3h0uvLWTXG4Nyx4p2EOPqzhdYw8fBLa2xm4xub3RBb6rAfoHwNKZtnMVOZkJ7++3U0SXwLAVjioRggzRBdaCPuLE+el5GVnStD1GAY0o5QqrmeOo3XAPBsvqEq9J4/nmBSY1DVblZ8oyPKVWruYDgLjksPDGzhHaIzZtMGb7JLwJF9C2eYZsviDLwt78XBQqzifB3aUxWpJo1ExeBecSF305q8ioxtXCleXE3xYvCp8L7cN6V94b2EzlygY0z5mvJ0zL9o0= jenkins@jenkins"
}
