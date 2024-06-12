resource "aws_internet_gateway" "tfer--igw-0513db42f3c5554eb" {
  tags = {
    Name = "ecs-moodle-stack/moodle-vpc"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-vpc"
    use  = "terraformer"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-08859779ddbba6ede_id}"
}
