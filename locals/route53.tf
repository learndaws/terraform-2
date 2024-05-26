resource "aws_route53_record" "TF_R53" {
  zone_id = var.zone_id
  name    = "${var.Name}.hellodns.xyz"
  type    = "A"
  ttl     = 300
  records = var.Name == "Web" ? [aws_instance.TF_EC2.public_ip] : [aws_instance.TF_EC2.private_ip]
}