module "CASDMRequestDB" {
  source           = "./modules/node_function"
  function_name    = "CASDMRequestDB"
  artifact_version = var.node_functions.CASDMRequestDB
  role             = data.terraform_remote_state.infraestrutura.outputs.role_vpc_secrets.arn
  vpc              = true
  env_variables = {
    mssqlDbName = "",
    mssqlServer = "",
  }
  layers = [
    data.terraform_remote_state.layers.outputs.node_layers.NodeMSSQL.arn,
    data.terraform_remote_state.layers.outputs.node_layers.NodeSecretsManager.arn
  ]
}