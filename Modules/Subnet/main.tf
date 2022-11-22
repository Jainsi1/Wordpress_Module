#Public subnet 1
resource "aws_subnet" "pubsubnet1" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = var.pb1
  }
}

#Public subnet 2
resource "aws_subnet" "pubsubnet2" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = var.pb2
  }
}

#Private subnet 1
resource "aws_subnet" "privatesubnet1" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = var.pv1
  }

}

#private subnet 2
resource "aws_subnet" "privatesubnet2" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = var.pv2
  }
}