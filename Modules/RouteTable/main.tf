
# Public Route Table

resource "aws_route_table" "public_route" {
  vpc_id = var.vpcid
  tags = {
    Name = var.pbr
  }
}

# Private Route Table

resource "aws_route_table" "private_route" {
  vpc_id = var.vpcid


  tags = {
    Name = var.pvr
  }
}