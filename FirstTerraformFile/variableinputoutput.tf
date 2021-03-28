variable "myInputVariable" {
  type = "string"
}

output "myOutputvariable" {
  sensitive = true   //this  will  not print the variable in the console
  value = "${var.myInputVariable}"
}