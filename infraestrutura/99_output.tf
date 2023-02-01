output "rds" {
  value     = aws_db_instance.projects
  sensitive = true
}

output "rds_sg" {
  value     = aws_security_group.rds_sg
  sensitive = true
}

output "cognito_user_pool" {
  value     = aws_cognito_user_pool.pechnicki
  sensitive = true
}

output "policy_invoke_lambda" {
  value     = aws_iam_policy.invoke_lambda
  sensitive = true
}

output "policy_lambda_logging" {
  value     = aws_iam_policy.lambda_logging
  sensitive = true
}

output "policy_secrets" {
  value     = aws_iam_policy.secrets
  sensitive = true
}

output "policy_vpc" {
  value     = aws_iam_policy.vpc
  sensitive = true
}

output "role_invoke_lambda" {
  value     = aws_iam_role.invoke_lambda
  sensitive = true
}

output "role_secrets" {
  value     = aws_iam_role.secrets
  sensitive = true
}

output "role_vpc" {
  value     = aws_iam_role.vpc
  sensitive = true
}

output "role_vpc_secrets" {
  value     = aws_iam_role.vpc_secrets
  sensitive = true
}

output "s3_bucket" {
  value     = aws_s3_bucket.bucket
  sensitive = true
}

output "kms_key" {
  value     = aws_kms_key.kms_key
  sensitive = true
}

output "kms_alias" {
  value     = aws_kms_alias.kms_alias
  sensitive = true
}