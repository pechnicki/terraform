/*
output "secret" {
  value = aws_secretsmanager_secret.user
}
output "secret_version" {
  value = aws_secretsmanager_secret_version.user_version
}
*/
output "database" {
  value     = postgresql_database.database
  sensitive = true
}
output "password" {
  value     = random_password.postgres_user_password.result
  sensitive = true
}
output "username" {
  value     = postgresql_database.database.owner
  sensitive = true
}
