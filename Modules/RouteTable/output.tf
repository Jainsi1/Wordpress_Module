output "pb_id" {
  description = "The ID of the Public Route"
  value       = aws_route_table.public_route.id
}
output "pv_id" {
  description = "The ID of the Private Route"
  value       = aws_route_table.private_route.id
}