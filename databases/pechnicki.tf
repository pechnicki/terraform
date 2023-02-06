module "pechnicki" {
  source      = "./modules/postgres"
  database    = "pechnicki"
  role        = "pechnicki_api"
  user        = "api_user"
}
