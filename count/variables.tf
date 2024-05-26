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
  default = ["Web","Catalogue","Cart","User","MongoDB","Redis"]
}
