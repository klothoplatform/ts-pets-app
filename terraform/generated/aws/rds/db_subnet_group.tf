resource "aws_db_subnet_group" "tfer--gg-dev-fcb0cc2" {
  description = "Managed by Pulumi"
  name        = "gg-dev-fcb0cc2"
  subnet_ids  = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-07074bbdbd064d83b_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0d7d77ea5bcf9159e_id}"]

  tags = {
    Name = "Klotho DB subnet group"
  }

  tags_all = {
    Name = "Klotho DB subnet group"
  }
}
