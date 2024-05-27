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
  type    = map
  default = {
      Web	: "t2.micro"
      Catalogue	: "t2.micro"
      Cart : "t2.micro"
      User	: "t2.micro"
      MongoDB	: "t3.small"
      Redis : "t2.micro"
  }
}
