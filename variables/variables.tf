#**********ec2.tf**********

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami" {
  type    = string
  default = "ami-0f3c7d07486cad139"
}

#variable "vpc_security_group_ids" {
#  type    = list
#  default = ["aws_security_group.TF_Second_SG.id"]
#}

variable "tags_ec2" {
  type    = map
  default = {
    Name = "abc-ec2.com"
    Environment = "Prod"
    Project = "Roboshop"
    Terraaform = "True"
  }
}

#**********sg.tf**********

variable "allow_all" {
  type    = string
  default = "allow_all"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0c9f509301e01e5dc"
}

variable "tags_sg" {
  type    = map
  default = {
    Name = "abc-sg.com"
    Environment = "Prod"
    Project = "Roboshop"
    Terraaform = "True"
  }
}

variable "cidr_ipv4" {
  type    = list
  default = ["0.0.0.0/0"]
}

variable "zero" {
  type    = number
  default = 0
}
