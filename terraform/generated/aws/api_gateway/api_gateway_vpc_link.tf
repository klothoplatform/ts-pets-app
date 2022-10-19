resource "aws_api_gateway_vpc_link" "tfer--main-vpc-link-7b8566b" {
  name        = "main-vpc-link-7b8566b"
  target_arns = ["arn:aws:elasticloadbalancing:us-east-2:338991950301:loadbalancer/net/main-nlb-ee1649f/434ae6ca91a893e3"]
}
