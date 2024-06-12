resource "aws_docdb_subnet_group" "tfer--ecs-moodle-stack-moodledbsubnetgroup5287029b-nnueh8csibrs" {
  description = "Subnet group for moodle-db database"
  name        = "ecs-moodle-stack-moodledbsubnetgroup5287029b-nnueh8csibrs"
  subnet_ids  = ["subnet-01ac82a06964d45ab", "subnet-0ddf805179c90a1fc"]

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }
}
