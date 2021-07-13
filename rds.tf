resource "aws_db_instance" "production" {
  name                 = "kitesocial_production"
  engine               = "postgresql"
  engine_version       = "13.3"
  instance_class       = "db.t3.micro"
  db_subnet_group_name = module.vpc.database_subnet_group
  parameter_group_name = "default.postgres13"

  username = "postgres"

  allocated_storage     = 10
  max_allocated_storage = 100
}
