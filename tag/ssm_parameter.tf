resource "aws_ssm_parameter" "tfer--cf-waf-web-acl-arn" {
  arn         = "arn:aws:ssm:us-east-1:760578178066:parameter/cf-waf-web-acl-arn"
  data_type   = "text"
  description = "The WAFv2 Web ACL used for CloudFront for Moodle"
  name        = "cf-waf-web-acl-arn"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  tier  = "Standard"
  type  = "String"
  value = "arn:aws:wafv2:us-east-1:760578178066:global/webacl/moodle-cf-waf-acl/5a106c62-3523-46db-b023-626652a2626f"
}
