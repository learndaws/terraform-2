resource "aws_route53_record" "TF_R53" {
  for_each = aws_instance.TF_EC2
  zone_id = var.zone_id
  name    = "${each.key}.hellodns.xyz"
  type    = "A"
  ttl     = 300
  records = [each.key == "Web" ? each.value.public_ip : each.value.private_ip]
}

