resource "aws_ecs_task_definition" "tfer--task-definition-002F-ecsmoodlestackmoodletaskdef3B550A0F" {
  container_definitions    = "[{\"command\":[],\"cpu\":0,\"credentialSpecs\":[],\"dnsSearchDomains\":[],\"dnsServers\":[],\"dockerLabels\":{},\"dockerSecurityOptions\":[],\"entryPoint\":[],\"environment\":[{\"name\":\"BITNAMI_DEBUG\",\"value\":\"true\"},{\"name\":\"MOODLE_DATABASE_HOST\",\"value\":\"ecs-moodle-stack-moodledbeac964eb-dieyltplqxbv.ciarzds0lhj2.us-east-1.rds.amazonaws.com\"},{\"name\":\"MOODLE_DATABASE_NAME\",\"value\":\"moodledb\"},{\"name\":\"MOODLE_DATABASE_PORT_NUMBER\",\"value\":\"3306\"},{\"name\":\"MOODLE_DATABASE_TYPE\",\"value\":\"mysqli\"},{\"name\":\"MOODLE_DATABASE_USER\",\"value\":\"dbadmin\"},{\"name\":\"MOODLE_EMAIL\",\"value\":\"hello@example.com\"},{\"name\":\"MOODLE_SITE_NAME\",\"value\":\"Scalable Moodle on ECS Fargate\"},{\"name\":\"MOODLE_SKIP_BOOTSTRAP\",\"value\":\"no\"},{\"name\":\"MOODLE_SKIP_INSTALL\",\"value\":\"no\"},{\"name\":\"MOODLE_USERNAME\",\"value\":\"moodleadmin\"}],\"environmentFiles\":[],\"essential\":true,\"extraHosts\":[],\"image\":\"760578178066.dkr.ecr.us-east-1.amazonaws.com/cdk-moodle-image:latest\",\"links\":[],\"logConfiguration\":{\"logDriver\":\"awslogs\",\"options\":{\"awslogs-group\":\"ecs-moodle-stack-moodletaskdefmoodlecontainerLogGroup581119A2-SobFeQ17HplA\",\"awslogs-region\":\"us-east-1\",\"awslogs-stream-prefix\":\"ecs-moodle\"},\"secretOptions\":[]},\"memory\":4096,\"mountPoints\":[{\"containerPath\":\"/bitnami\",\"readOnly\":false,\"sourceVolume\":\"moodle\"}],\"name\":\"moodle\",\"portMappings\":[{\"containerPort\":8080,\"hostPort\":8080,\"protocol\":\"tcp\"}],\"secrets\":[{\"name\":\"MOODLE_DATABASE_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:us-east-1:760578178066:secret:ecsmoodlestackmoodledbSecre-s0pgWDdMMv8G-gXKeUq:password::\"},{\"name\":\"MOODLE_PASSWORD\",\"valueFrom\":\"arn:aws:secretsmanager:us-east-1:760578178066:secret:moodlepasswordsecret585482A-Tq2nCfOkm6Gw-cyRfec\"}],\"stopTimeout\":120,\"systemControls\":[],\"ulimits\":[],\"volumesFrom\":[]}]"
  cpu                      = "2048"
  execution_role_arn       = "arn:aws:iam::760578178066:role/ecs-moodle-stack-moodletaskdefExecutionRole4692C07D-4SIBCTeYO9Zh"
  family                   = "ecsmoodlestackmoodletaskdef3B550A0F"
  memory                   = "4096"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  task_role_arn = "arn:aws:iam::760578178066:role/ecs-moodle-stack-moodletaskdefTaskRoleD0BAB4BB-IuDhbMkbmPWT"

  volume {
    efs_volume_configuration {
      authorization_config {
        access_point_id = "fsap-005f62f923330b87b"
      }

      file_system_id          = "fs-08bfdfe128a3535c7"
      root_directory          = "/"
      transit_encryption      = "ENABLED"
      transit_encryption_port = "0"
    }

    name = "moodle"
  }
}
