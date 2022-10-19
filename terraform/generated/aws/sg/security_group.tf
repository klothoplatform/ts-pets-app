resource "aws_security_group" "tfer--gg-dev_sg-041aa103eb1e59339" {
  description = "Managed by Pulumi"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allows all outbound IPv4 traffic."
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.128.0/18", "10.0.192.0/18"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    description = "Allows inbound traffic from network interfaces and instances that are assigned to the same security group."
    from_port   = "0"
    protocol    = "-1"
    self        = "true"
    to_port     = "0"
  }

  name   = "gg-dev"
  vpc_id = "vpc-0314174688e77ffc6"
}
