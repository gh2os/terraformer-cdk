resource "aws_elasticache_subnet_group" "tfer--ecsmoodlestack-redis-subnet-group" {
  description = "Moodle Redis Subnet Group"
  name        = "ecsmoodlestack-redis-subnet-group"
  subnet_ids  = ["${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-01ac82a06964d45ab_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0ddf805179c90a1fc_id}"]

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }
}
