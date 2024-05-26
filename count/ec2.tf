resource "aws_instance" "TF_EC2" {
  #count = 6
  count = length(var.Name)
  ami           = var.ami
  instance_type = var.Name[count.index] == "MongoDB" ? "t3.small" : "t2.micro"

  tags = {
    Name = var.Name[count.index]
    Environment = "Prod"
    Project = "Roboshop"
    Terraaform = "True"
  }
}



