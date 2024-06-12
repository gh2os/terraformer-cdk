resource "aws_ecs_service" "tfer--moodle-ecs-cluster_ecs-moodle-stack-moodleserviceService319611B4-ZxjnONJLXqsg" {
  alarms {
    enable   = "false"
    rollback = "false"
  }

  capacity_provider_strategy {
    base              = "0"
    capacity_provider = "FARGATE"
    weight            = "1"
  }

  capacity_provider_strategy {
    base              = "0"
    capacity_provider = "FARGATE_SPOT"
    weight            = "3"
  }

  cluster = "moodle-ecs-cluster"

  deployment_circuit_breaker {
    enable   = "true"
    rollback = "true"
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = "200"
  deployment_minimum_healthy_percent = "50"
  desired_count                      = "1"
  enable_ecs_managed_tags            = "true"
  enable_execute_command             = "false"
  health_check_grace_period_seconds  = "1800"

  load_balancer {
    container_name   = "moodle"
    container_port   = "8080"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:760578178066:targetgroup/ecs-mo-moodl-RV7MRCBPBAZ6/153cfb21d83092b7"
  }

  name = "ecs-moodle-stack-moodleserviceService319611B4-ZxjnONJLXqsg"

  network_configuration {
    assign_public_ip = "false"
    security_groups  = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--ecs-moodle-stack-moodleserviceSecurityGroup1CC37159-DmiZyV4zwats_sg-0c4224117102bdc83_id}"]
    subnets          = ["${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-01ac82a06964d45ab_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0ddf805179c90a1fc_id}"]
  }

  platform_version    = "LATEST"
  scheduling_strategy = "REPLICA"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  task_definition = "arn:aws:ecs:us-east-1:760578178066:task-definition/ecsmoodlestackmoodletaskdef3B550A0F:3"
}
