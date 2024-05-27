#**********ec2.tf**********

variable "ami" {
  type    = string
  default = "ami-0f3c7d07486cad139"
}


#**********r53.tf**********

variable "zone_id" {
  type    = string
  default = "Z08149982GBIICXQF76PI"
}


#**********ec2.tf & r53.tf**********

variable "Name" {
  type    = list
  default = ["Web","Catalogue"]
}


#**********sg.tf**********

variable "ingress_rules" {
  default = [
    {
        description      = "Allow port 80"
        from_port        = 80 # 0 means all ports
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "Allow port 443"
        from_port        = 443 # 0 means all ports
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "Allow port 22"
        from_port        = 22# 0 means all ports
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "Allow port 3306"
        from_port        = 3306# 0 means all ports
        to_port          = 3306
        protocol         = "tcp"
        cidr_blocks      = ["192.167.23.23/32"]
    }

  ]
}

