variable "ami_id" {
  default = "ami-068d43a544160b7ef"
}

variable "sg_id" {}
variable "ec2_key" {}
variable "instance_type" {}


resource "aws_instance" "web" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.ec2_key
  security_groups = ["${var.sg_id}"]

  tags = {
    Name = "Terraform EC2 Instance"
  }
}



