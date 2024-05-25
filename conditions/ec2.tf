resource "aws_instance" "TF_Second_EC2" {
  ami           = var.ami
  instance_type = var.instance_name == "Mongodb" ? "t3.small" : "t2.micro"

  tags = var.tags_ec2
}

