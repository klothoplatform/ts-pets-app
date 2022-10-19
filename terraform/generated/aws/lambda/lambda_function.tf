resource "aws_lambda_function" "tfer--gg-dev-breeds" {
  architectures = ["x86_64"]

  environment {
    variables = {
      APP_NAME          = "gg-dev"
      CLOUDCC_NAMESPACE = "cloudccprod"
      EXECUNIT_NAME     = "breeds"
      KLOTHO_S3_PREFIX  = "338991950301"
      SNS_ARN_BASE      = "arn:aws:sns:us-east-2:338991950301"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "gg-dev-breeds"
  image_uri                      = "338991950301.dkr.ecr.us-east-2.amazonaws.com/gg-dev-repo:5615c131736f17e90fc8c392fafd50beba53184f981ffa191fe74d1b0f598f39"
  memory_size                    = "512"
  package_type                   = "Image"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::338991950301:role/gg-dev_b52eb_LambdaExec-5873b1f"
  source_code_hash               = "4a53eecdd55ee42204d9d7851c8817555024a9c8aa89846fa1130e93db047380"

  tags = {
    env     = "production"
    service = "breeds"
  }

  tags_all = {
    env     = "production"
    service = "breeds"
  }

  timeout = "180"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-041aa103eb1e59339"]
    subnet_ids         = ["subnet-07074bbdbd064d83b", "subnet-0d7d77ea5bcf9159e"]
  }
}

resource "aws_lambda_function" "tfer--gg-dev-cats" {
  architectures = ["x86_64"]

  environment {
    variables = {
      APP_NAME                           = "gg-dev"
      CLOUDCC_NAMESPACE                  = "cloudccprod"
      EXECUNIT_NAME                      = "cats"
      KLOTHO_S3_PREFIX                   = "338991950301"
      SEQUELIZEDB_PERSIST_ORM_CONNECTION = "postgres://ggtest:sqldbpassword512@sequelizedb-e2e67db.proxy-cnmnyzqvkko0.us-east-2.rds.amazonaws.com:5432/sequelizedb"
      SNS_ARN_BASE                       = "arn:aws:sns:us-east-2:338991950301"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "gg-dev-cats"
  image_uri                      = "338991950301.dkr.ecr.us-east-2.amazonaws.com/gg-dev-repo:60512718028a5fe619603c5900ee0acd7b7eb86ea1a86662dade28efd6a65fe4"
  memory_size                    = "512"
  package_type                   = "Image"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::338991950301:role/gg-dev_d9366_LambdaExec-e66ba7c"
  source_code_hash               = "f625fce74685fc6c99ce64fde58ab919bcc8dc8c26b5b6540856c3595cf529c2"

  tags = {
    env     = "production"
    service = "cats"
  }

  tags_all = {
    env     = "production"
    service = "cats"
  }

  timeout = "180"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-041aa103eb1e59339"]
    subnet_ids         = ["subnet-07074bbdbd064d83b", "subnet-0d7d77ea5bcf9159e"]
  }
}

resource "aws_lambda_function" "tfer--gg-dev-dogs" {
  architectures = ["x86_64"]

  environment {
    variables = {
      APP_NAME                           = "gg-dev"
      CLOUDCC_NAMESPACE                  = "cloudccprod"
      EXECUNIT_NAME                      = "dogs"
      KLOTHO_S3_PREFIX                   = "338991950301"
      SEQUELIZEDB_PERSIST_ORM_CONNECTION = "postgres://ggtest:sqldbpassword512@sequelizedb-e2e67db.proxy-cnmnyzqvkko0.us-east-2.rds.amazonaws.com:5432/sequelizedb"
      SNS_ARN_BASE                       = "arn:aws:sns:us-east-2:338991950301"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "gg-dev-dogs"
  image_uri                      = "338991950301.dkr.ecr.us-east-2.amazonaws.com/gg-dev-repo:d634ccf18ef170e4c09c2509f46f4343f9024f275f18a06968f2dee227a59b19"
  memory_size                    = "512"
  package_type                   = "Image"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::338991950301:role/gg-dev_23bcd_LambdaExec-99b7ed5"
  source_code_hash               = "6ecd5d201dd05af339196d3c91db57cf5e0a52005c0d09573551cb477ae12eb7"

  tags = {
    env     = "production"
    service = "dogs"
  }

  tags_all = {
    env     = "production"
    service = "dogs"
  }

  timeout = "180"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-041aa103eb1e59339"]
    subnet_ids         = ["subnet-07074bbdbd064d83b", "subnet-0d7d77ea5bcf9159e"]
  }
}

resource "aws_lambda_function" "tfer--gg-dev-shelter" {
  architectures = ["x86_64"]

  environment {
    variables = {
      APP_NAME                           = "gg-dev"
      CLOUDCC_NAMESPACE                  = "cloudccprod"
      EXECUNIT_NAME                      = "shelter"
      KLOTHO_S3_PREFIX                   = "338991950301"
      SEQUELIZEDB_PERSIST_ORM_CONNECTION = "postgres://ggtest:sqldbpassword512@sequelizedb-e2e67db.proxy-cnmnyzqvkko0.us-east-2.rds.amazonaws.com:5432/sequelizedb"
      SNS_ARN_BASE                       = "arn:aws:sns:us-east-2:338991950301"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "gg-dev-shelter"
  image_uri                      = "338991950301.dkr.ecr.us-east-2.amazonaws.com/gg-dev-repo:b3725e007b2b614199becccd97d282c70007cb2dff92c378b77ab86de5eda561"
  memory_size                    = "512"
  package_type                   = "Image"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::338991950301:role/gg-dev_cd96b_LambdaExec-a0cdb08"
  source_code_hash               = "be035919380aa8a24e314ae9d31f150e114845ea6fc15004d594330a31cd210a"

  tags = {
    env     = "production"
    service = "shelter"
  }

  tags_all = {
    env     = "production"
    service = "shelter"
  }

  timeout = "180"

  tracing_config {
    mode = "PassThrough"
  }

  vpc_config {
    security_group_ids = ["sg-041aa103eb1e59339"]
    subnet_ids         = ["subnet-07074bbdbd064d83b", "subnet-0d7d77ea5bcf9159e"]
  }
}
