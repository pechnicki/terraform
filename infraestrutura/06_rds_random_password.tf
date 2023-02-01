resource "random_password" "rds_password" {
  length  = 20
  upper   = true
  lower   = true
  numeric = true
  special = false
}
