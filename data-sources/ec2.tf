resource "aws_instance" "TF_Second_EC2" {
  ami           = data.aws_ami.centos8.id
  instance_type = "t2.micro"

  tags = {
    Name = "Prod"
  }
}

