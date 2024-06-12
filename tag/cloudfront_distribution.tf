resource "aws_cloudfront_distribution" "tfer--EDBP7IYT7GVVK" {
  aliases = ["devmoodle.eclaritylearning.ca"]

  default_cache_behavior {
    allowed_methods          = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cache_policy_id          = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad"
    cached_methods           = ["GET", "HEAD"]
    compress                 = "true"
    default_ttl              = "0"
    max_ttl                  = "0"
    min_ttl                  = "0"
    origin_request_policy_id = "216adef6-5c7f-47e4-b989-5492eafa07d3"
    smooth_streaming         = "false"
    target_origin_id         = "ecsmoodlestackmoodleecsdistOrigin1C2737DD0"
    viewer_protocol_policy   = "redirect-to-https"
  }

  enabled         = "true"
  http_version    = "http2"
  is_ipv6_enabled = "true"

  origin {
    connection_attempts = "3"
    connection_timeout  = "10"

    custom_origin_config {
      http_port                = "80"
      https_port               = "443"
      origin_keepalive_timeout = "5"
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = "60"
      origin_ssl_protocols     = ["TLSv1.2"]
    }

    domain_name = "moodle-ecs-alb-470398127.us-east-1.elb.amazonaws.com"
    origin_id   = "ecsmoodlestackmoodleecsdistOrigin1C2737DD0"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  retain_on_delete = "false"
  staging          = "false"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:760578178066:certificate/4391e9c3-57ba-4346-a433-936c5e2f5233"
    cloudfront_default_certificate = "false"
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }

  web_acl_id = "arn:aws:wafv2:us-east-1:760578178066:global/webacl/moodle-cf-waf-acl/5a106c62-3523-46db-b023-626652a2626f"
}
