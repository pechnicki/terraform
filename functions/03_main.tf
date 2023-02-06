data "terraform_remote_state" "infraestrutura" {
  backend = "s3"
  config = {
    bucket = "pechnicki-terraform-states"
    key = "infraestrutura.tfstate"
    region = var.aws_region
  }
}

data "terraform_remote_state" "layers" {
  backend = "s3"
  config = {
    bucket = "pechnicki-terraform-states"
    key = "layers.tfstate"
    region = var.aws_region
  }
}

data "terraform_remote_state" "databases" {
  backend = "s3"
  config = {
    bucket = "pechnicki-terraform-states"
    key = "databases.tfstate"
    region = var.aws_region
  }
}

