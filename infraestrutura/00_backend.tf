terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.52"
    }
  }
  backend "s3" {
    bucket = "pechnicki-terraform-states"
    key    = "infraestrutura.tfstate"
    region = "sa-east-1"
  }
}
