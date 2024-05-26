resource "aws_instance" "TF_EC2" {
  #count = 6
  ami   = var.ami
  instance_type = local.instance_type

  tags = {
    Name = "abc"
    Environment = "Prod"
    Project = "Roboshop"
    Terraform = "True"
  }
}



