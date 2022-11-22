#  Associating Public Route Table
resource "aws_route_table_association" "rt1" {
  subnet_id      = var.pubsub1_id
  route_table_id = var.pb_id
}

# Associating Public Route Table

resource "aws_route_table_association" "rt2" {
  subnet_id      = var.pubsub2_id
  route_table_id = var.pb_id
}

# Associating Private Route Table 
resource "aws_route_table_association" "private1_association" {
  subnet_id      = var.pvtsub1_id
  route_table_id = var.pv_id
}
resource "aws_route_table_association" "private2_association" {
  subnet_id      = var.pvtsub1_id
  route_table_id = var.pv_id
}