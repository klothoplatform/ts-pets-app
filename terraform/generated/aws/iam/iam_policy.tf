resource "aws_iam_policy" "tfer--gg-dev-breeds-exec-df3c13b" {
  name = "gg-dev-breeds-exec-df3c13b"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Condition": {
        "StringEquals": {
          "cloudwatch:namespace": "cloudccprod"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:338991950301:function:gg-dev-breeds/invocations"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--gg-dev-cats-exec-cb8d8ba" {
  name = "gg-dev-cats-exec-cb8d8ba"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Condition": {
        "StringEquals": {
          "cloudwatch:namespace": "cloudccprod"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::338991950301gg-dev-payloads",
        "arn:aws:s3:::338991950301gg-dev-payloads/*"
      ]
    },
    {
      "Action": [
        "rds-db:connect"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:rds-db:us-east-2:338991950301:dbuser:db-7K5OPBKR37PTDGNJ6JNYQMTTYA/ggtest"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--gg-dev-dogs-exec-df20269" {
  name = "gg-dev-dogs-exec-df20269"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Condition": {
        "StringEquals": {
          "cloudwatch:namespace": "cloudccprod"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::338991950301gg-dev-payloads",
        "arn:aws:s3:::338991950301gg-dev-payloads/*"
      ]
    },
    {
      "Action": [
        "rds-db:connect"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:rds-db:us-east-2:338991950301:dbuser:db-7K5OPBKR37PTDGNJ6JNYQMTTYA/ggtest"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--gg-dev-shelter-exec-2c0ed45" {
  name = "gg-dev-shelter-exec-2c0ed45"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Condition": {
        "StringEquals": {
          "cloudwatch:namespace": "cloudccprod"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::338991950301gg-dev-payloads",
        "arn:aws:s3:::338991950301gg-dev-payloads/*"
      ]
    },
    {
      "Action": [
        "rds-db:connect"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:rds-db:us-east-2:338991950301:dbuser:db-7K5OPBKR37PTDGNJ6JNYQMTTYA/ggtest"
    },
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:us-east-2:338991950301:function:gg-dev-dogs"
      ]
    },
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:us-east-2:338991950301:function:gg-dev-cats"
      ]
    },
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:338991950301:function:gg-dev-shelter/invocations"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--gg-test-sqs-readmsg" {
  name = "gg-test-sqs-readmsg"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sqs:ReceiveMessage",
      "Effect": "Allow",
      "Resource": "arn:aws:sqs:us-east-1:338991950301:gg-test-queue",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
