resource "aws_route_table" "tfer--rtb-0314f963ba6e367d4" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-0c935b9f40ec75bb1"
  }

  vpc_id = data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0314174688e77ffc6_id
}

resource "aws_route_table" "tfer--rtb-04e2bfad5b7c2f915" {
  vpc_id = data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0314174688e77ffc6_id
}

resource "aws_route_table" "tfer--rtb-0727943028518eade" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0c6f89e46f73f0b79"
  }

  vpc_id = data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0314174688e77ffc6_id
}

resource "aws_route_table" "tfer--rtb-0c3b348f1bb0b3a41" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0c6f89e46f73f0b79"
  }

  vpc_id = data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0314174688e77ffc6_id
}

resource "aws_route_table" "tfer--rtb-0cc0e6f528f78867b" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-073cdf55c0cc56211"
  }

  vpc_id = data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0314174688e77ffc6_id
}
