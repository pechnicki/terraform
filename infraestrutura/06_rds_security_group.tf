resource "aws_security_group" "rds_sg" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "POSTGRESQL"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic.
  egress {
    description = "ALL TRAFFIC - OUT"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}