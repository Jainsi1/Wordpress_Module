output "pubsub1_id" {
  description = "The ID of the first Public subnet"
  value       = aws_subnet.pubsubnet1.id
}
output "pubsub2_id" {
  description = "The ID of the second Public subnet"
  value       = aws_subnet.pubsubnet2.id
}
output "pvtsub1_id" {
  description = "The ID of the first private subnet"
  value       = aws_subnet.privatesubnet1.id
}
output "pvtsub2_id" {
  description = "The ID of the second private subnet"
  value       = aws_subnet.privatesubnet2.id
}