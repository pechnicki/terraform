resource "random_password" "postgres_user_password" {
  length  = 20
  upper   = true
  lower   = true
  numeric = true
  special = false
}
