resource "aws_security_group" "TF_Second_SG" {
  name        = "allow_all"
  description = "allow_all"
  vpc_id      = "vpc-0c9f509301e01e5dc"

  tags = {
    Name = "allow_all"
  }
}

resource "aws_vpc_security_group_ingress_rule" "TF_Second_SG_ingress_allow_all" {
  security_group_id = aws_security_group.TF_Second_SG.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
  from_port         = 0
  to_port           = 0
}

resource "aws_vpc_security_group_egress_rule" "TF_Second_SG_egress_allow_all" {
  security_group_id = aws_security_group.TF_Second_SG.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
  from_port         = 0
  to_port           = 0
}