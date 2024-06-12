resource "aws_db_instance" "tfer--ecs-moodle-stack-moodledbeac964eb-dieyltplqxbv" {
  allocated_storage                     = "30"
  auto_minor_version_upgrade            = "true"
  availability_zone                     = "us-east-1a"
  backup_retention_period               = "7"
  backup_target                         = "region"
  backup_window                         = "05:40-06:10"
  ca_cert_identifier                    = "rds-ca-rsa2048-g1"
  copy_tags_to_snapshot                 = "true"
  customer_owned_ip_enabled             = "false"
  db_name                               = "moodledb"
  db_subnet_group_name                  = "${aws_db_subnet_group.tfer--ecs-moodle-stack-moodledbsubnetgroup5287029b-nnueh8csibrs.name}"
  deletion_protection                   = "false"
  engine                                = "mysql"
  engine_version                        = "8.0.32"
  iam_database_authentication_enabled   = "false"
  identifier                            = "ecs-moodle-stack-moodledbeac964eb-dieyltplqxbv"
  instance_class                        = "db.t3.micro"
  iops                                  = "0"
  kms_key_id                            = "arn:aws:kms:us-east-1:760578178066:key/1fac12a1-0a62-4aa8-93e5-d30658ea69fc"
  license_model                         = "general-public-license"
  maintenance_window                    = "wed:03:01-wed:03:31"
  max_allocated_storage                 = "300"
  monitoring_interval                   = "0"
  multi_az                              = "true"
  network_type                          = "IPV4"
  option_group_name                     = "default:mysql-8-0"
  parameter_group_name                  = "default.mysql8.0"
  performance_insights_enabled          = "false"
  performance_insights_retention_period = "0"
  port                                  = "3306"
  publicly_accessible                   = "false"
  storage_encrypted                     = "true"
  storage_throughput                    = "0"
  storage_type                          = "gp2"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  username               = "dbadmin"
  vpc_security_group_ids = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--ecs-moodle-stack-moodledbSecurityGroup0DFA55B1-uzhn0ywAveWZ_sg-04e6aeb8ab918f9ee_id}"]
}
