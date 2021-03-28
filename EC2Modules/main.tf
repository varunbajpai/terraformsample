provider "aws" {
  region     = "ap-south-1"
  profile    = "varunbajpai22"
}


module "ec2_module" {
  source = "./ec2_module"
}