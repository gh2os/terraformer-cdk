resource "aws_ecs_cluster" "tfer--moodle-ecs-cluster" {
  name = "moodle-ecs-cluster"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }
}
