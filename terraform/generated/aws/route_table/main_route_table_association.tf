resource "aws_main_route_table_association" "tfer--vpc-0314174688e77ffc6" {
  route_table_id = data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-04e2bfad5b7c2f915_id
  vpc_id         = data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0314174688e77ffc6_id
}
