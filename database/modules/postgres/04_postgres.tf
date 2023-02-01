resource "postgresql_role" "role" {
  name = var.role
}

resource "postgresql_role" "user" {
  depends_on = [
    random_password.postgres_user_password,
  ]
  name     = var.user
  login    = true
  password = random_password.postgres_user_password.result
  roles    = [postgresql_role.role.name]
}

resource "postgresql_database" "database" {
  name  = var.database
  owner = data.terraform_remote_state.infraestrutura.outputs.rds.username
}

resource "postgresql_grant" "revoke_public" {
  database    = postgresql_database.database.name
  role        = "public"
  schema      = "public"
  object_type = "schema"
  privileges  = []
}
