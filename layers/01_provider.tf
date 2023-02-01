provider "aws" {
  region  = var.aws_region
  default_tags {
    tags = {
      Owner      = "pechnicki"
      Folder     = "lambda/layers"
    }
  }
}