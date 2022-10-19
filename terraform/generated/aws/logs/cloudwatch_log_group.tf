resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-gg-dev-breeds" {
  name              = "/aws/lambda/gg-dev-breeds"
  retention_in_days = "1"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-gg-dev-cats" {
  name              = "/aws/lambda/gg-dev-cats"
  retention_in_days = "1"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-gg-dev-dogs" {
  name              = "/aws/lambda/gg-dev-dogs"
  retention_in_days = "1"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-gg-dev-shelter" {
  name              = "/aws/lambda/gg-dev-shelter"
  retention_in_days = "1"
}
