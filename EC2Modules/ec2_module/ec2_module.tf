variable "vpcid" {
  default = "vpc-0325da68"
}


resource "aws_security_group" "terraform_ec2_sg" {
  name        = "terraform_ec2_sg"
  description = "Allow all inbound traffic"
  vpc_id      = var.vpcid

  ingress {
    description = "ssh from VPC"
    from_port   = 0
    to_port     = 65535
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow ssh"
  }
}

variable "ami_id" {
  default = "ami-068d43a544160b7ef"
}



resource "aws_instance" "web" {
  ami = var.ami_id
  instance_type = "t2.micro"
  key_name = "deployer-key"
  security_groups = [aws_security_group.terraform_ec2_sg.name]

  tags = {
    Name = "Terraform EC2 Instance"
  }
}



