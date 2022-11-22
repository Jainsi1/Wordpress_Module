variable "vpc_id" {
}
variable "pb1" {
  type = string
  description = "name of first public subnet"
  default = "Pubsubnet1"
}
variable "pb2" {
  type = string
  description = "name of second public subnet"
  default = "Pubsubnet2"
}
variable "pv1" {
  type = string
  description = "name of first private subnet"
  default = "Pvtsubnet1"
}
variable "pv2" {
  type = string
  description = "name of second private subnet"
  default = "Pvtsubnet2"
}

