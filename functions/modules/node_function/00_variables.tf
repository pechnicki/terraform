variable "aws_region" {
  description = "aws_region"
  type        = string
  default     = "sa-east-1"
}
variable "function_name" {
  description = "app_name"
  type        = string
}
variable "artifact_version" {
  description = "artifact_version"
  type        = string
}
variable "role" {
  description = "role"
  type        = string
}
variable "env_variables" {
  description = "env_variables"
  type        = map(string)
  default     = null
}
variable "layers" {
  description = "layers"
  type        = list(string)
  default     = null
}
variable "timeout" {
  description = "timeout"
  type        = number
  default     = 30
}
variable "vpc" {
  description = "vpc"
  type        = bool
  default     = false
}