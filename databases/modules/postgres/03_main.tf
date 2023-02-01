data "terraform_remote_state" "infraestrutura" {
  backend = "s3"
  config = {
    bucket = "pechnicki-terraform-states"
    key = "infraestrutura.tfstate"
    region = var.aws_region
  }
}