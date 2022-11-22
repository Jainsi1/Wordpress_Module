# Route Creation
resource "aws_route" "public" {
  route_table_id         = var.pb_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.igw_id
}