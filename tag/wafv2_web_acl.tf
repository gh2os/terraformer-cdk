resource "aws_wafv2_web_acl" "tfer--moodle-cf-waf-acl_5a106c62" {
  description = "Web ACL for Moodle CloudFront"
  name        = "moodle-cf-waf-acl"

  rule {
    name     = "AWS-AWSManagedRulesAmazonIpReputationList"
    priority = "0"

    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesAmazonIpReputationList"
        vendor_name = "AWS"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = "true"
      metric_name                = "AWS-AWSManagedRulesAmazonIpReputationList-metrics"
      sampled_requests_enabled   = "true"
    }
  }

  scope = "CLOUDFRONT"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  visibility_config {
    cloudwatch_metrics_enabled = "true"
    metric_name                = "moodle-waf-metrics"
    sampled_requests_enabled   = "true"
  }
}
