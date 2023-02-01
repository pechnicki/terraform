module "CASDMRequestSOAP" {
  source           = "./modules/node_function"
  function_name    = "CASDMRequestSOAP"
  artifact_version = var.node_functions.CASDMRequestSOAP
  role             = data.terraform_remote_state.infraestrutura.outputs.role_vpc_secrets.arn
  timeout          = 180
  vpc              = true
  env_variables = {
    CASDMUrl = ""
  }
  layers = [
    data.terraform_remote_state.layers.outputs.node_layers.NodeSecretsManager.arn
  ]
}