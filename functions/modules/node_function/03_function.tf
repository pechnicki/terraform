locals {
  env_variables_map = var.env_variables[*]
}

resource "aws_lambda_function" "function" {
  depends_on = [
    aws_s3_object.artifact
  ]
  s3_bucket         = data.aws_s3_object.artifact.bucket
  s3_key            = data.aws_s3_object.artifact.key
  s3_object_version = data.aws_s3_object.artifact.version_id
  function_name     = var.function_name
  role              = var.role
  handler           = "index.handler"
  runtime           = "nodejs16.x"
  timeout           = var.timeout
  vpc_config {
    subnet_ids         = var.vpc ? data.aws_subnets.subnet_private.ids : []
    security_group_ids = var.vpc ? [data.terraform_remote_state.infraestrutura.outputs.rds_sg.id] : []
  }
  dynamic "environment" {
    for_each = local.env_variables_map
    content {
      variables = environment.value
    }
  }
  layers = var.layers
}
