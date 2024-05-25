resource "aws_instance" "TF_Second_EC2" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.TF_Second_SG.id]

  tags = var.tags_ec2
}

