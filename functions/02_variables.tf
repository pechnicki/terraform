# AWS
variable "aws_region" {
  description = "aws_region"
  type        = string
}

variable "default_node_functions" {
  description = "default_node_functions"
  type = map(string)
}

variable "node_functions" {
  description = "node_functions"
  type = map(string)
}