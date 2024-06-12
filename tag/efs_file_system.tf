resource "aws_efs_file_system" "tfer--fs-08bfdfe128a3535c7" {
  creation_token = "moodleefs5D41A69F-TmtOltAU9qzK"
  encrypted      = "true"
  kms_key_id     = "arn:aws:kms:us-east-1:760578178066:key/583e534f-6dd5-407a-9c69-d46dcfbd21f7"

  lifecycle_policy {
    transition_to_ia = "AFTER_30_DAYS"
  }

  lifecycle_policy {
    transition_to_primary_storage_class = "AFTER_1_ACCESS"
  }

  performance_mode = "generalPurpose"

  protection {
    replication_overwrite = "ENABLED"
  }

  provisioned_throughput_in_mibps = "0"

  tags = {
    Name = "ecs-moodle-stack/moodle-efs"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-efs"
    use  = "terraformer"
  }

  throughput_mode = "elastic"
}
