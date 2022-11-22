variable "db_name" {
    type = string
    description = "Name of the Database"
    default = "wordpress_db"
}

variable "user" {
    type = string
    description = "User"
    default = "wordpress"
}

variable "passwd" {
    type = string
    description = "Password"
    default = "12345678"
}
variable "sg_id" {
  
}
variable "datasubid" {
  default = []
}