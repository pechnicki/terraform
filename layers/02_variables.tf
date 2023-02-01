# AWS
variable "aws_region" {
  description = "aws_region"
  type        = string
}

variable "node_layers" {
  description = "node_layers"
  type = map(string)
}