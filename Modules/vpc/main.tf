# Vpc creation
resource "aws_vpc" "wordpressvpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    "name" = "var.vpc_name"
  }
}