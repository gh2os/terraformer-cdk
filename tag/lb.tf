resource "aws_lb" "tfer--moodle-ecs-alb" {
  connection_logs {
    enabled = "false"
  }

  desync_mitigation_mode                      = "defensive"
  drop_invalid_header_fields                  = "false"
  enable_cross_zone_load_balancing            = "true"
  enable_deletion_protection                  = "false"
  enable_http2                                = "true"
  enable_tls_version_and_cipher_suite_headers = "false"
  enable_waf_fail_open                        = "false"
  enable_xff_client_port                      = "false"
  idle_timeout                                = "60"
  internal                                    = "false"
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "moodle-ecs-alb"
  preserve_host_header                        = "false"
  security_groups                             = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--ecs-moodle-stack-moodlealbSecurityGroup1390F35A-mbO9B3nJ1fp8_sg-06972abbf704b850c_id}"]

  subnet_mapping {
    subnet_id = "subnet-042ba429fbd7e8a0c"
  }

  subnet_mapping {
    subnet_id = "subnet-0d48a875c919a750b"
  }

  subnets = ["${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-042ba429fbd7e8a0c_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0d48a875c919a750b_id}"]

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  xff_header_processing_mode = "append"
}
