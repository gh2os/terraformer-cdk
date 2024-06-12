resource "aws_db_subnet_group" "tfer--ecs-moodle-stack-moodledbsubnetgroup5287029b-nnueh8csibrs" {
  description = "Subnet group for moodle-db database"
  name        = "ecs-moodle-stack-moodledbsubnetgroup5287029b-nnueh8csibrs"
  subnet_ids  = ["${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-01ac82a06964d45ab_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0ddf805179c90a1fc_id}"]

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }
}
