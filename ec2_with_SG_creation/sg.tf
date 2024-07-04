resource "aws_security_group" "TF_Second_SG" {
  name        = "allow_all"
  description = "allow_all"
  vpc_id      = "vpc-0c9f509301e01e5dc"

  tags = {
    Name = "allow_all"
  }
}

resource "aws_security_group_rule" "TF_Second_SG_ingress_allow_all" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.TF_Second_SG.id
}

resource "aws_security_group_rule" "TF_Second_SG_egress_allow_all" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.TF_Second_SG.id
}