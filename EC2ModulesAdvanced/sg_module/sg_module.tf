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



output "sg_id_output" {
  value = aws_security_group.terraform_ec2_sg.name

}