module "RequestDB" {
  source           = "./modules/node_function"
  function_name    = "RequestDB"
  artifact_version = var.node_functions.RequestDB
  role             = data.terraform_remote_state.infraestrutura.outputs.role_vpc_secrets.arn
  vpc              = true
  env_variables = {
    POSTGRES_HOST = data.terraform_remote_state.infraestrutura.outputs.rds.address,
    POSTGRES_PORT = data.terraform_remote_state.infraestrutura.outputs.rds.port,
    POSTGRES_USER = data.terraform_remote_state.databases.outputs.pechnicki.username,
    POSTGRES_PWD  = data.terraform_remote_state.databases.outputs.pechnicki.password
  }
  layers = [
    data.terraform_remote_state.layers.outputs.node_layers.NodePostgres.arn,
    data.terraform_remote_state.layers.outputs.node_layers.NodeSecretsManager.arn
  ]
}
