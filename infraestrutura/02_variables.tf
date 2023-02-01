# AWS
variable "aws_region" {
  description = "aws_region"
  type        = string
}

# NETWORK
variable "igw_name" {
  description = "igw_name"
  type        = string
}

# SG
variable "sg_name" {
  description = "sg_name"
  type        = string
}
variable "sg_description" {
  description = "sg_description"
  type        = string
}

# RDS
variable "rds_identifier" {
  description = "rds_identifier"
  type        = string
}
variable "rds_engine" {
  description = "rds_engine"
  type        = string
}
variable "rds_engine_version" {
  description = "rds_engine_version"
  type        = string
}
variable "rds_instance_class" {
  description = "rds_instance_class"
  type        = string
}
variable "rds_parameter_group_name" {
  description = "rds_parameter_group_name"
  type        = string
}
variable "rds_storage_type" {
  description = "rds_storage_type"
  type        = string
}
variable "rds_allocated_storage" {
  description = "rds_allocated_storage"
  type        = number
}
variable "rds_username" {
  description = "rds_username"
  type        = string
}
variable "rds_port" {
  description = "rds_port"
  type        = number
}
variable "rds_subnet_group_name" {
  description = "rds_subnet_group_name"
  type        = string
}

# COGNITO
variable "cognito_user_pool" {
  description = "cognito_user_pool"
  type        = string
}
variable "cognito_user_pool_domain" {
  description = "cognito_user_pool_domain"
  type        = string
}

# S3
variable "s3_buckets" {
  description = "s3_buckets"
  type        = list(string)
}

# KMS
variable "kms_description" {
  description = "kms_description"
  type        = string
}
variable "kms_name" {
  description = "kms_name"
  type        = string
}

variable "secret_name_postgres_user_api" {
  description = "secret_name_postgres_user_api"
  type        = string
}

variable "secret_desc_postgres_user_api" {
  description = "secret_desc_postgres_user_api"
  type        = string
}
