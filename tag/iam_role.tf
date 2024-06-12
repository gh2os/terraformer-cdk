resource "aws_iam_role" "tfer--ecs-moodle-stack-AWS679f53fac002430cb0da5b7982bd228-iKIg5ZEIN22C" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "cfwafwebaclarnssmparamreaderCustomResourcePolicy083D1F23"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"ssm:GetParameter\",\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "ecs-moodle-stack-AWS679f53fac002430cb0da5b7982bd228-iKIg5ZEIN22C"
  path                 = "/"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }
}

resource "aws_iam_role" "tfer--ecs-moodle-stack-moodletaskdefExecutionRole4692C07D-4SIBCTeYO9Zh" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "moodletaskdefExecutionRoleDefaultPolicy6167E6A2"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ecr:GetAuthorizationToken\",\"ecr:BatchCheckLayerAvailability\",\"ecr:GetDownloadUrlForLayer\",\"ecr:BatchGetImage\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:logs:us-east-1:760578178066:log-group:ecs-moodle-stack-moodletaskdefmoodlecontainerLogGroup581119A2-SobFeQ17HplA:*\"},{\"Action\":[\"secretsmanager:GetSecretValue\",\"secretsmanager:DescribeSecret\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:secretsmanager:us-east-1:760578178066:secret:ecsmoodlestackmoodledbSecre-s0pgWDdMMv8G-gXKeUq\"},{\"Action\":[\"secretsmanager:GetSecretValue\",\"secretsmanager:DescribeSecret\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:secretsmanager:us-east-1:760578178066:secret:moodlepasswordsecret585482A-Tq2nCfOkm6Gw-cyRfec\"}]}"
  }

  max_session_duration = "3600"
  name                 = "ecs-moodle-stack-moodletaskdefExecutionRole4692C07D-4SIBCTeYO9Zh"
  path                 = "/"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }
}

resource "aws_iam_role" "tfer--ecs-moodle-stack-moodletaskdefTaskRoleD0BAB4BB-IuDhbMkbmPWT" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  max_session_duration = "3600"
  name                 = "ecs-moodle-stack-moodletaskdefTaskRoleD0BAB4BB-IuDhbMkbmPWT"
  path                 = "/"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }
}

resource "aws_iam_role" "tfer--ecs-moodle-stack-moodlevpcflowlogtocloudwatchIAMRol-AX4VEbyeS0x1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "vpc-flow-logs.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "moodlevpcflowlogtocloudwatchIAMRoleDefaultPolicy8B9F4BE3"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:PutLogEvents\",\"logs:DescribeLogStreams\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:logs:us-east-1:760578178066:log-group:ecs-moodle-stack-moodlevpcflowlogtocloudwatchLogGroup436624C1-izUMFr1lDDMy:*\"},{\"Action\":\"iam:PassRole\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::760578178066:role/ecs-moodle-stack-moodlevpcflowlogtocloudwatchIAMRol-AX4VEbyeS0x1\"}]}"
  }

  max_session_duration = "3600"
  name                 = "ecs-moodle-stack-moodlevpcflowlogtocloudwatchIAMRol-AX4VEbyeS0x1"
  path                 = "/"

  tags = {
    Name = "ecs-moodle-stack/moodle-vpc"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-vpc"
    use  = "terraformer"
  }
}
