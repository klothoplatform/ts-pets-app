resource "aws_iam_role_policy_attachment" "tfer--gg-dev_23bcd_LambdaExec-99b7ed5_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "gg-dev_23bcd_LambdaExec-99b7ed5"
}

resource "aws_iam_role_policy_attachment" "tfer--gg-dev_23bcd_LambdaExec-99b7ed5_gg-dev-dogs-exec-df20269" {
  policy_arn = "arn:aws:iam::338991950301:policy/gg-dev-dogs-exec-df20269"
  role       = "gg-dev_23bcd_LambdaExec-99b7ed5"
}

resource "aws_iam_role_policy_attachment" "tfer--gg-dev_b52eb_LambdaExec-5873b1f_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "gg-dev_b52eb_LambdaExec-5873b1f"
}

resource "aws_iam_role_policy_attachment" "tfer--gg-dev_b52eb_LambdaExec-5873b1f_gg-dev-breeds-exec-df3c13b" {
  policy_arn = "arn:aws:iam::338991950301:policy/gg-dev-breeds-exec-df3c13b"
  role       = "gg-dev_b52eb_LambdaExec-5873b1f"
}

resource "aws_iam_role_policy_attachment" "tfer--gg-dev_cd96b_LambdaExec-a0cdb08_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "gg-dev_cd96b_LambdaExec-a0cdb08"
}

resource "aws_iam_role_policy_attachment" "tfer--gg-dev_cd96b_LambdaExec-a0cdb08_gg-dev-shelter-exec-2c0ed45" {
  policy_arn = "arn:aws:iam::338991950301:policy/gg-dev-shelter-exec-2c0ed45"
  role       = "gg-dev_cd96b_LambdaExec-a0cdb08"
}

resource "aws_iam_role_policy_attachment" "tfer--gg-dev_d9366_LambdaExec-e66ba7c_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "gg-dev_d9366_LambdaExec-e66ba7c"
}

resource "aws_iam_role_policy_attachment" "tfer--gg-dev_d9366_LambdaExec-e66ba7c_gg-dev-cats-exec-cb8d8ba" {
  policy_arn = "arn:aws:iam::338991950301:policy/gg-dev-cats-exec-cb8d8ba"
  role       = "gg-dev_d9366_LambdaExec-e66ba7c"
}
