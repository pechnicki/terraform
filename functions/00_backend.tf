terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.41"
    }
  }
  backend "s3" {
    bucket = "pechnicki-terraform-states"
    key = "functions.tfstate"
    region = "sa-east-1"
  }
}
