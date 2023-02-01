resource "aws_db_instance" "projects" {
  depends_on = [
    random_password.rds_password,
    aws_db_subnet_group.rds_subnet_group,
    aws_security_group.rds_sg
  ]
  identifier             = var.rds_identifier
  engine                 = var.rds_engine
  engine_version         = var.rds_engine_version
  instance_class         = var.rds_instance_class
  parameter_group_name   = var.rds_parameter_group_name
  port                   = var.rds_port
  storage_type           = var.rds_storage_type
  allocated_storage      = var.rds_allocated_storage
  username               = var.rds_username
  password               = random_password.rds_password.result
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
  publicly_accessible    = true
  storage_encrypted      = true
  skip_final_snapshot    = true
  apply_immediately      = true
}
