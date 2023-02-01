module "GoogleChatWebhook" {
  source           = "./modules/node_function"
  function_name    = "GoogleChatWebhook"
  artifact_version = var.node_functions.GoogleChatWebhook
  role             = data.terraform_remote_state.infraestrutura.outputs.role_vpc_secrets.arn
}