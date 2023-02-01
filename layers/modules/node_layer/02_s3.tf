locals {
  artifact = "${var.layer_name}-${var.artifact_version}.zip"
}

data "aws_s3_object" "artifact" {
  bucket =  data.terraform_remote_state.infraestrutura.outputs.s3_bucket.pechnicki-lambda.bucket
  key    = "layers/${local.artifact}"
}