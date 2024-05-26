locals {
    instance_type = var.Name == "MongoDB" ? "t3.small" : "t2.micro"
}