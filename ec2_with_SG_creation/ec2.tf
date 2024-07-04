resource "aws_instance" "TF_Second_EC2" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = var.instance_type

  tags = {
    Name = "Prod"
  }
}

