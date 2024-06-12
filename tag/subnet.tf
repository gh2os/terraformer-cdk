resource "aws_subnet" "tfer--subnet-01ac82a06964d45ab" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.192.0/18"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                  = "ecs-moodle-stack/moodle-vpc/PrivateSubnet2"
    "aws-cdk:subnet-name" = "Private"
    "aws-cdk:subnet-type" = "Private"
    use                   = "terraformer"
  }

  tags_all = {
    Name                  = "ecs-moodle-stack/moodle-vpc/PrivateSubnet2"
    "aws-cdk:subnet-name" = "Private"
    "aws-cdk:subnet-type" = "Private"
    use                   = "terraformer"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-08859779ddbba6ede_id}"
}

resource "aws_subnet" "tfer--subnet-042ba429fbd7e8a0c" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.64.0/18"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                  = "ecs-moodle-stack/moodle-vpc/PublicSubnet2"
    "aws-cdk:subnet-name" = "Public"
    "aws-cdk:subnet-type" = "Public"
    use                   = "terraformer"
  }

  tags_all = {
    Name                  = "ecs-moodle-stack/moodle-vpc/PublicSubnet2"
    "aws-cdk:subnet-name" = "Public"
    "aws-cdk:subnet-type" = "Public"
    use                   = "terraformer"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-08859779ddbba6ede_id}"
}

resource "aws_subnet" "tfer--subnet-0d48a875c919a750b" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.0.0/18"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                  = "ecs-moodle-stack/moodle-vpc/PublicSubnet1"
    "aws-cdk:subnet-name" = "Public"
    "aws-cdk:subnet-type" = "Public"
    use                   = "terraformer"
  }

  tags_all = {
    Name                  = "ecs-moodle-stack/moodle-vpc/PublicSubnet1"
    "aws-cdk:subnet-name" = "Public"
    "aws-cdk:subnet-type" = "Public"
    use                   = "terraformer"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-08859779ddbba6ede_id}"
}

resource "aws_subnet" "tfer--subnet-0ddf805179c90a1fc" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.128.0/18"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                  = "ecs-moodle-stack/moodle-vpc/PrivateSubnet1"
    "aws-cdk:subnet-name" = "Private"
    "aws-cdk:subnet-type" = "Private"
    use                   = "terraformer"
  }

  tags_all = {
    Name                  = "ecs-moodle-stack/moodle-vpc/PrivateSubnet1"
    "aws-cdk:subnet-name" = "Private"
    "aws-cdk:subnet-type" = "Private"
    use                   = "terraformer"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-08859779ddbba6ede_id}"
}
