#**********ec2.tf**********

variable "instance_name" {
  type    = string
  default = "Web"
}

variable "ami" {
  type    = string
  default = "ami-0f3c7d07486cad139"
}

variable "tags_ec2" {
  type    = map
  default = {
    Name = "abc-ec2.com"
    Environment = "Prod"
    Project = "Roboshop"
    Terraaform = "True"
  }
}

