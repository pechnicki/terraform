output "secret" {
  value = aws_secretsmanager_secret.user
}
output "secret_version" {
  value = aws_secretsmanager_secret_version.user_version
}
output "database" {
  value = postgresql_database.database
}
 
