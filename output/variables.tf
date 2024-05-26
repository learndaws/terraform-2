#**********ec2.tf**********

variable "instance_name" {
  type    = string
  default = "Web"
}

variable "ami" {
  type    = string
  default = "ami-0f3c7d07486cad139"
}

variable "Name" {
  type    = string
  default = "Web"
}

