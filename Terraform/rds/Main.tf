# main.tf

resource "aws_db_instance" "default" {
  allocated_storage      = var.allocated_storage
  storage_type           = var.storage_type
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  db_name                = var.db_name
  username               = var.username
  password               = var.password
  db_subnet_group_name   = aws_db_subnet_group.dbsubnet.id
  vpc_security_group_ids = [var.rds_sg_id]
}

resource "aws_db_subnet_group" "dbsubnet" {
  name       = var.db_subnet_group_name
  subnet_ids = var.subnet_ids
}
