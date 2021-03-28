provider "aws" {
  region     = "ap-south-1"
  profile    = "varunbajpai22"
}

module "sg_module" {
  source = "./sg_module"
}

module "ec2_module_2" {
  sg_id = module.sg_module.sg_id_output
  ec2_key = "deployer-key"
  ami_id= "ami-068d43a544160b7ef"
  instance_type = "t2.micro"


  source = "./ec2_module"
}


module "ec2_module_1" {
  sg_id = module.sg_module.sg_id_output
  ec2_key = "deployer-key"
  ami_id= "ami-068d43a544160b7ef"
  instance_type = "t2.micro"


  source = "./ec2_module"
}