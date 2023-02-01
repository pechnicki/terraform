terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.41"
    }
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.17.1"
    }
  }
  backend "s3" {
    bucket = "pechnicki-terraform-states"
    key    = "infraestrutura.tfstate"
    region = "sa-east-1"
  }
}
