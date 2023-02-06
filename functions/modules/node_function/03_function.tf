locals {
  env_variables_map = var.env_variables[*]
}

resource "aws_lambda_function" "function" {
  s3_bucket        = data.aws_s3_object.artifact.bucket
  s3_key           = data.aws_s3_object.artifact.key
  source_code_hash = data.aws_s3_object.artifact.etag
  function_name    = var.function_name
  role             = var.role
  handler          = "index.handler"
  runtime          = "nodejs18.x"
  timeout          = var.timeout
  vpc_config {
    subnet_ids         = var.vpc ? data.terraform_remote_state.infraestrutura.outputs.private_subnet : []
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
