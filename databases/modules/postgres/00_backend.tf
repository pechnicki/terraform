terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.52"
    }
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.18.0"
    }
  }
}
