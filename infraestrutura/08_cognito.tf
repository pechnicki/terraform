resource "aws_cognito_user_pool" "pechnicki" {
  name              = var.cognito_user_pool
  mfa_configuration = "OFF"
  admin_create_user_config {
    allow_admin_create_user_only = true
  }
}

resource "aws_cognito_user_pool_domain" "main" {
  domain       = var.cognito_user_pool_domain
  user_pool_id = aws_cognito_user_pool.pechnicki.id
}
