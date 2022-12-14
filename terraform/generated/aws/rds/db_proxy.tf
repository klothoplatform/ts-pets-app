resource "aws_db_proxy" "tfer--sequelizedb-e2e67db" {
  auth {
    auth_scheme = "SECRETS"
    description = "use the secrets generated by klotho"
    iam_auth    = "DISABLED"
    secret_arn  = "arn:aws:secretsmanager:us-east-2:338991950301:secret:gg-dev-sequelizedb_secret-I6oSx2"
  }

  debug_logging          = "false"
  engine_family          = "POSTGRESQL"
  idle_client_timeout    = "1800"
  name                   = "sequelizedb-e2e67db"
  require_tls            = "false"
  role_arn               = "arn:aws:iam::338991950301:role/sequelizedb-ormsecretrole-0aa04cc"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--gg-dev_sg-041aa103eb1e59339_id}"]
  vpc_subnet_ids         = ["subnet-07074bbdbd064d83b", "subnet-0d7d77ea5bcf9159e"]
}
