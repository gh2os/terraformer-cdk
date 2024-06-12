resource "aws_vpc" "tfer--vpc-08859779ddbba6ede" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "10.0.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"

  tags = {
    Name = "ecs-moodle-stack/moodle-vpc"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-vpc"
    use  = "terraformer"
  }
}
