resource "aws_eip" "tfer--eipalloc-0853ab4cdfb9a6470" {
  domain               = "vpc"
  network_border_group = "us-east-1"
  network_interface    = "eni-024aa15c574d24abe"
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "ecs-moodle-stack/moodle-vpc/PublicSubnet2"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-vpc/PublicSubnet2"
    use  = "terraformer"
  }

  vpc = "true"
}

resource "aws_eip" "tfer--eipalloc-08ae0a66a7da8945c" {
  domain               = "vpc"
  network_border_group = "us-east-1"
  network_interface    = "eni-0f8c3188a0b61dda3"
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "ecs-moodle-stack/moodle-vpc/PublicSubnet1"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-vpc/PublicSubnet1"
    use  = "terraformer"
  }

  vpc = "true"
}
