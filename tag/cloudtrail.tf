resource "aws_cloudtrail" "tfer--ecs-moodle-stack-cloudtrailtrail59842059-PZHGpGlSBXeb" {
  enable_log_file_validation    = "true"
  enable_logging                = "true"
  include_global_service_events = "true"
  is_multi_region_trail         = "true"
  is_organization_trail         = "false"
  name                          = "ecs-moodle-stack-cloudtrailtrail59842059-PZHGpGlSBXeb"
  s3_bucket_name                = "ecs-moodle-stack-cloudtrailbucket4e585f26-iubxb1iofhxm"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }
}
