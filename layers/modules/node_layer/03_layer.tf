resource "aws_lambda_layer_version" "node_layer" {
  layer_name          = var.layer_name
  s3_bucket           = data.aws_s3_object.artifact.bucket
  s3_key              = data.aws_s3_object.artifact.key
  s3_object_version   = data.aws_s3_object.artifact.version_id
  compatible_runtimes = ["nodejs16.x", "nodejs14.x", "nodejs12.x"]
}
