module "pechnicki" {
  source      = "./modules/postgres"
  database    = "pechnicki"
  role        = "pechnicki_api"
  user        = "api_user"
  secret_name = "pechnicki-kms"
  secret_desc = "Chave de encriptação para secrets utilizados no ambiente"
}
