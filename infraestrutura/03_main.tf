data "aws_caller_identity" "current" {}

data "aws_availability_zones" "azs" {
  all_availability_zones = true
}