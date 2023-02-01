module "DefaultNodeFunctions" {
  source           = "./modules/node_function"
  for_each         = var.default_node_functions
  function_name    = each.key
  artifact_version = each.value
  role             = data.terraform_remote_state.infraestrutura.outputs.role_invoke_lambda.arn
  layers           = [data.terraform_remote_state.layers.outputs.node_layers.NodeInvokeLambda.arn]
}