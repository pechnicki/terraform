provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      Module = "database-postgres"
    }
  }
}

provider "postgresql" {
  scheme           = "awspostgres"
  host             = data.terraform_remote_state.infraestrutura.outputs.rds.address
  port             = data.terraform_remote_state.infraestrutura.outputs.rds.port
  username         = data.terraform_remote_state.infraestrutura.outputs.rds.username
  password         = data.terraform_remote_state.infraestrutura.outputs.rds.password
  expected_version = data.terraform_remote_state.infraestrutura.outputs.rds.engine_version
  superuser        = false
}
