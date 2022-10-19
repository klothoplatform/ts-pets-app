resource "aws_route_table_association" "tfer--subnet-0148f34b6c98a25d3" {
  route_table_id = data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0c3b348f1bb0b3a41_id
  subnet_id      = data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0148f34b6c98a25d3_id
}

resource "aws_route_table_association" "tfer--subnet-07074bbdbd064d83b" {
  route_table_id = data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0314f963ba6e367d4_id
  subnet_id      = data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-07074bbdbd064d83b_id
}

resource "aws_route_table_association" "tfer--subnet-0a239348a467f0e7f" {
  route_table_id = data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0727943028518eade_id
  subnet_id      = data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0a239348a467f0e7f_id
}

resource "aws_route_table_association" "tfer--subnet-0d7d77ea5bcf9159e" {
  route_table_id = data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-0cc0e6f528f78867b_id
  subnet_id      = data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0d7d77ea5bcf9159e_id
}
