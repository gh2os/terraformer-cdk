resource "aws_efs_access_point" "tfer--fsap-005f62f923330b87b" {
  file_system_id = "fs-08bfdfe128a3535c7"

  root_directory {
    path = "/"
  }

  tags = {
    Name = "ecs-moodle-stack/moodle-efs/moodle-efs-access-point"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-efs/moodle-efs-access-point"
    use  = "terraformer"
  }
}
