resource "aws_security_group" "TF_Second_SG" {
  name        = var.allow_all
  description = var.allow_all
  vpc_id      = var.vpc_id

  tags = var.tags_sg

  ingress {
  from_port        = var.zero
  to_port          = var.zero
  protocol         = "-1"
  cidr_blocks      = var.cidr_ipv4
  }

  egress {
    from_port        = var.zero
    to_port          = var.zero
    protocol         = "-1"
    cidr_blocks      = var.cidr_ipv4
  }
}