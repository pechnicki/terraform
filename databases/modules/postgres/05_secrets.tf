resource "aws_secretsmanager_secret" "user" {
  name                           = var.secret_name
  description                    = var.secret_desc
  kms_key_id                     = data.terraform_remote_state.infraestrutura.outputs.kms_key.arn
  force_overwrite_replica_secret = true
  recovery_window_in_days        = 0
}

resource "aws_secretsmanager_secret_version" "user_version" {
  secret_id     = aws_secretsmanager_secret.user.id
  secret_string = <<EOF
  {
    "user":"${var.role}",
    "password":"${random_password.postgres_user_password.result}"
  }
  EOF
}
