output "sg_id" {
  description = "The ID of the Security Group"
  value       = aws_security_group.wp_sg.id
}