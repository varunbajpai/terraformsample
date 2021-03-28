provider "aws" {
  region     = "ap-south-1"
  profile    = "varunbajpai22"
}

//string type variables are the default types
variable "firststring" {
  type = string
  default = "hey there delilah"
}


output "myfirstoutput" {
  value = "${var.firststring}"
}


variable "MultiLineString" {
  type = "string"
  default = <<EOH
      here comes in
      multiline string
      that will be printed in multiple lines
      EOH
}

output "myMultiLineoutput" {
  value = "${var.MultiLineString}"
}


variable "mapexample" {
  type = "map"
  default = {
    "us-east-1" = "ami1"
    "us-east-2"  = "ami2"
  }
}


output "mymapoutput" {
  value = "${var.mapexample.us-east-2}"
}


variable "myFirstlist" {
  type = list
  default = ["abc","def","ghi"]
}

output "listout" {
  value = "${var.myFirstlist[2]}"
}

variable "testbool" {
  default = true
}

output "testboolout" {
  value = "${var.testbool}"
}
