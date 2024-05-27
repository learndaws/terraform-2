output "centos_id" {
    value = data.aws_ami.centos8.id
}

output "vpc_id" {
    value = data.aws_vpc.selected.id
}