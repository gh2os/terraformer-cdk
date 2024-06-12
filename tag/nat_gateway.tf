resource "aws_nat_gateway" "tfer--nat-02ede3d54be695fe8" {
  allocation_id                      = "eipalloc-08ae0a66a7da8945c"
  connectivity_type                  = "public"
  private_ip                         = "10.0.15.211"
  secondary_private_ip_address_count = "0"
  subnet_id                          = "subnet-0d48a875c919a750b"

  tags = {
    Name = "ecs-moodle-stack/moodle-vpc/PublicSubnet1"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-vpc/PublicSubnet1"
    use  = "terraformer"
  }
}

resource "aws_nat_gateway" "tfer--nat-06af11a6afb6cf6c3" {
  allocation_id                      = "eipalloc-0853ab4cdfb9a6470"
  connectivity_type                  = "public"
  private_ip                         = "10.0.72.45"
  secondary_private_ip_address_count = "0"
  subnet_id                          = "subnet-042ba429fbd7e8a0c"

  tags = {
    Name = "ecs-moodle-stack/moodle-vpc/PublicSubnet2"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-vpc/PublicSubnet2"
    use  = "terraformer"
  }
}
