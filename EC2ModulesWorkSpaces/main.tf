provider "aws" {
  region     = "ap-south-1"
  profile    = "varunbajpai22"
}

module "sg_module" {
  sg_name = "sg_ec2_${local.env}"
  source = "./sg_module"
}

module "ec2_module_2" {
  sg_id = module.sg_module.sg_id_output
  ec2_key = "deployer-key"
  ami_id= "ami-068d43a544160b7ef"
  instance_type = "t2.micro"
  source = "./ec2_module"
}

//locals variable

locals {
  ami_id_env = {
    default = "ami_id_default"
    staging = "ami_id_staging"
    production = "ami_id_production"

  }

  ami_id = lookup(local.ami_id_env,local.env)

  env = terraform.workspace
}



output "env_specific_variable" {
        value = local.ami_id
}

//in order to create and checkout to a new workspace
//terraform workspace new production
//terraform workspace select staging