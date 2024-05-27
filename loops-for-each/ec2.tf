#need to start execution from scratch

resource "aws_instance" "TF_EC2" {
  for_each = var.Name
  ami           = data.aws_ami.centos8.id
  instance_type = each.value

  tags = {
    Name = each.key
    Environment = "Prod"
    Project = "Roboshop"
    Terraaform = "True"
  }
}



