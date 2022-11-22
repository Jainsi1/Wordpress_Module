resource "aws_db_instance" "wordpressdb" {

  db_name                = var.db_name
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.medium"
  username               = var.user
  password               = var.passwd
  parameter_group_name   = "default.mysql5.7"
  skip_final_snapshot    = true
  allocated_storage      = 50
  max_allocated_storage  = 100
  vpc_security_group_ids = [var.sg_id]
  db_subnet_group_name   = aws_db_subnet_group.default.id

  tags = {
    name = var.db_name
  }

}

resource "aws_db_subnet_group" "default" {
  name       = "main1"
  subnet_ids = var.datasubid

  tags = {
    Name = "Database subnet group"
  }
}
 