resource "aws_db_instance" "tfer--sequelizedb1521c3a" {
  allocated_storage                     = "20"
  auto_minor_version_upgrade            = "true"
  availability_zone                     = "us-east-2b"
  backup_retention_period               = "0"
  backup_window                         = "08:43-09:13"
  ca_cert_identifier                    = "rds-ca-2019"
  copy_tags_to_snapshot                 = "false"
  customer_owned_ip_enabled             = "false"
  db_name                               = "sequelizedb"
  db_subnet_group_name                  = "${aws_db_subnet_group.tfer--gg-dev-fcb0cc2.name}"
  deletion_protection                   = "false"
  engine                                = "postgres"
  engine_version                        = "13.7"
  iam_database_authentication_enabled   = "true"
  identifier                            = "sequelizedb1521c3a"
  instance_class                        = "db.t4g.micro"
  iops                                  = "0"
  license_model                         = "postgresql-license"
  maintenance_window                    = "thu:06:23-thu:06:53"
  max_allocated_storage                 = "0"
  monitoring_interval                   = "0"
  multi_az                              = "false"
  name                                  = "sequelizedb"
  network_type                          = "IPV4"
  option_group_name                     = "default:postgres-13"
  parameter_group_name                  = "default.postgres13"
  performance_insights_enabled          = "false"
  performance_insights_retention_period = "0"
  port                                  = "5432"
  publicly_accessible                   = "false"
  storage_encrypted                     = "false"
  storage_type                          = "gp2"
  username                              = "ggtest"
  vpc_security_group_ids                = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--gg-dev_sg-041aa103eb1e59339_id}"]
}
