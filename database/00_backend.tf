terraform {
  backend "s3" {
    bucket = "pechnicki-terraform-states"
    key    = "databases.tfstate"
    region = "sa-east-1"
  }
}
