# CONFIGURAÇÕES QUE VARIAM POR AMBIENTE
#

# CONFIGURAÇÕES FIXAS
# AWS 
aws_region = "sa-east-1"
# NETWORK
igw_name = "igw_pechnicki"
# SG
sg_name = "sg_pechnicki_rds"
sg_description = "SG para utilizacao do RDS pechnicki"
# RDS
rds_identifier = "pechnicki"
rds_engine = "postgres"
rds_engine_version = "14.3"
rds_instance_class = "db.t3.micro"
rds_parameter_group_name = "default.postgres14"
rds_storage_type = "gp2"
rds_allocated_storage = 20
rds_username = "pechnicki"
rds_port = 5432
rds_subnet_group_name = "pechnicki-rds-subnet-group"
# COGNITO
cognito_user_pool = "pechnicki"
cognito_user_pool_domain = "pechnicki"
# S3
s3_buckets = ["pechnicki-lambda","pechnicki-amplify"]