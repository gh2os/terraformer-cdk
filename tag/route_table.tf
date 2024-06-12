resource "aws_route_table" "tfer--rtb-05b6bf2f20daa5372" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0513db42f3c5554eb"
  }

  tags = {
    Name = "ecs-moodle-stack/moodle-vpc/PublicSubnet2"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-vpc/PublicSubnet2"
    use  = "terraformer"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-08859779ddbba6ede_id}"
}

resource "aws_route_table" "tfer--rtb-09a223a0a4af3c550" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-06af11a6afb6cf6c3"
  }

  tags = {
    Name = "ecs-moodle-stack/moodle-vpc/PrivateSubnet2"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-vpc/PrivateSubnet2"
    use  = "terraformer"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-08859779ddbba6ede_id}"
}

resource "aws_route_table" "tfer--rtb-0a87aca650d73dc0b" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-02ede3d54be695fe8"
  }

  tags = {
    Name = "ecs-moodle-stack/moodle-vpc/PrivateSubnet1"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-vpc/PrivateSubnet1"
    use  = "terraformer"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-08859779ddbba6ede_id}"
}

resource "aws_route_table" "tfer--rtb-0c6715496c0e43e13" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0513db42f3c5554eb"
  }

  tags = {
    Name = "ecs-moodle-stack/moodle-vpc/PublicSubnet1"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-vpc/PublicSubnet1"
    use  = "terraformer"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-08859779ddbba6ede_id}"
}
