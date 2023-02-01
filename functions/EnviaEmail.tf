module "EnviaEmail" {
  source           = "./modules/node_function"
  function_name    = "EnviaEmail"
  artifact_version = var.node_functions.EnviaEmail
  role             = data.terraform_remote_state.infraestrutura.outputs.role_secrets.arn
  env_variables = {
    tokenUrl = "",
    emailUrl = ""
  }
  layers = [
    data.terraform_remote_state.layers.outputs.node_layers.NodeAxios.arn,
    data.terraform_remote_state.layers.outputs.node_layers.NodeSecretsManager.arn
  ]
}