resource "aws_lb_target_group" "tfer--ecs-mo-moodl-RV7MRCBPBAZ6" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "5"
    interval            = "30"
    matcher             = "200"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "20"
    unhealthy_threshold = "2"
  }

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "ecs-mo-moodl-RV7MRCBPBAZ6"
  port                              = "8080"
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  target_type = "ip"
  vpc_id      = "vpc-08859779ddbba6ede"
}
