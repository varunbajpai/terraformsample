locals {

  env_suffix_name = {
    default = "ami_id_default"
    staging = "ami_id_staging"
    production = "ami_id_production"

  }
  env = terraform.workspace
  env_suffix = lookup(local.env_suffix_name,env)
}

output "env_suffix" {
        value = local.env_suffix
}