variable "aws_region" {
  description = "aws_region"
  type        = string
  default     = "sa-east-1"
}

variable "database" {
  description = "database"
  type        = string
}
variable "role" {
  description = "role"
  type        = string
}
variable "user" {
  description = "user"
  type        = string
}
/*
variable "secret_name" {
  description = "secret_name"
  type        = string
}
variable "secret_desc" {
  description = "secret_name"
  type        = string
}
*/