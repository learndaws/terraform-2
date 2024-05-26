resource "aws_instance" "TF_Second_EC2" {
  ami           = var.ami
  instance_type = var.Name == "MongoDB" ? "t3.small" : "t2.micro"

  tags = {
    Name = "ec2"
    Environment = "Prod"
    Project = "Roboshop"
    Terraaform = "True"
  }
}

