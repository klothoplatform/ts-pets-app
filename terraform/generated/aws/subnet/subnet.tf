resource "aws_subnet" "tfer--subnet-0148f34b6c98a25d3" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.64.0/18"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "gg-dev-public-1"
    type = "public"
  }

  tags_all = {
    Name = "gg-dev-public-1"
    type = "public"
  }

  vpc_id = data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0314174688e77ffc6_id
}

resource "aws_subnet" "tfer--subnet-07074bbdbd064d83b" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.128.0/18"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "gg-dev-private-0"
    type = "private"
  }

  tags_all = {
    Name = "gg-dev-private-0"
    type = "private"
  }

  vpc_id = data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0314174688e77ffc6_id
}

resource "aws_subnet" "tfer--subnet-0a239348a467f0e7f" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.0.0/18"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "gg-dev-public-0"
    type = "public"
  }

  tags_all = {
    Name = "gg-dev-public-0"
    type = "public"
  }

  vpc_id = data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0314174688e77ffc6_id
}

resource "aws_subnet" "tfer--subnet-0d7d77ea5bcf9159e" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.192.0/18"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "gg-dev-private-1"
    type = "private"
  }

  tags_all = {
    Name = "gg-dev-private-1"
    type = "private"
  }

  vpc_id = data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0314174688e77ffc6_id
}
