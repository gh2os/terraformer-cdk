resource "aws_security_group" "tfer--ecs-moodle-stack-moodlealbSecurityGroup1390F35A-mbO9B3nJ1fp8_sg-06972abbf704b850c" {
  description = "Automatically created Security Group for ELB ecsmoodlestackmoodlealbD39E5E3A"

  egress {
    description     = "Load balancer to target"
    from_port       = "8080"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--ecs-moodle-stack-moodleserviceSecurityGroup1CC37159-DmiZyV4zwats_sg-0c4224117102bdc83_id}"]
    self            = "false"
    to_port         = "8080"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow from anyone on port 443"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow from anyone on port 80"
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "ecs-moodle-stack-moodlealbSecurityGroup1390F35A-mbO9B3nJ1fp8"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  vpc_id = "vpc-08859779ddbba6ede"
}

resource "aws_security_group" "tfer--ecs-moodle-stack-moodledbSecurityGroup0DFA55B1-uzhn0ywAveWZ_sg-04e6aeb8ab918f9ee" {
  description = "Security group for moodle-db database"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    description     = "From Moodle ECS Service"
    from_port       = "3306"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--ecs-moodle-stack-moodleserviceSecurityGroup1CC37159-DmiZyV4zwats_sg-0c4224117102bdc83_id}"]
    self            = "false"
    to_port         = "3306"
  }

  name = "ecs-moodle-stack-moodledbSecurityGroup0DFA55B1-uzhn0ywAveWZ"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  vpc_id = "vpc-08859779ddbba6ede"
}

resource "aws_security_group" "tfer--ecs-moodle-stack-moodleefsEfsSecurityGroup623A28C8-DNT6MF2iaEHU_sg-0b69ea22124e55949" {
  description = "ecs-moodle-stack/moodle-efs/EfsSecurityGroup"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    description     = "From Moodle ECS Service"
    from_port       = "2049"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--ecs-moodle-stack-moodleserviceSecurityGroup1CC37159-DmiZyV4zwats_sg-0c4224117102bdc83_id}"]
    self            = "false"
    to_port         = "2049"
  }

  name = "ecs-moodle-stack-moodleefsEfsSecurityGroup623A28C8-DNT6MF2iaEHU"

  tags = {
    Name = "ecs-moodle-stack/moodle-efs"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-efs"
    use  = "terraformer"
  }

  vpc_id = "vpc-08859779ddbba6ede"
}

resource "aws_security_group" "tfer--ecs-moodle-stack-moodleredissgEE874356-uAF4mGI3n6r1_sg-04b9ee4e4f6d5e764" {
  description = "ecs-moodle-stack/moodle-redis-sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    description     = "From Moodle ECS Service"
    from_port       = "6379"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--ecs-moodle-stack-moodleserviceSecurityGroup1CC37159-DmiZyV4zwats_sg-0c4224117102bdc83_id}"]
    self            = "false"
    to_port         = "6379"
  }

  name = "ecs-moodle-stack-moodleredissgEE874356-uAF4mGI3n6r1"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  vpc_id = "vpc-08859779ddbba6ede"
}

resource "aws_security_group" "tfer--ecs-moodle-stack-moodleserviceSecurityGroup1CC37159-DmiZyV4zwats_sg-0c4224117102bdc83" {
  description = "ecs-moodle-stack/moodle-service/SecurityGroup"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    description     = "Load balancer to target"
    from_port       = "8080"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--ecs-moodle-stack-moodlealbSecurityGroup1390F35A-mbO9B3nJ1fp8_sg-06972abbf704b850c_id}"]
    self            = "false"
    to_port         = "8080"
  }

  name = "ecs-moodle-stack-moodleserviceSecurityGroup1CC37159-DmiZyV4zwats"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  vpc_id = "vpc-08859779ddbba6ede"
}

resource "aws_security_group" "tfer--ecs-moodle-stack-moodlevpcecrvpcendpointSecurityGroup70984AF4-3DntSAeG8vPU_sg-014f223513cfffd7d" {
  description = "ecs-moodle-stack/moodle-vpc/ecr-vpc-endpoint/SecurityGroup"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic by default"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/16"]
    description = "from 10.0.0.0/16:443"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "ecs-moodle-stack-moodlevpcecrvpcendpointSecurityGroup70984AF4-3DntSAeG8vPU"

  tags = {
    Name = "ecs-moodle-stack/moodle-vpc"
    use  = "terraformer"
  }

  tags_all = {
    Name = "ecs-moodle-stack/moodle-vpc"
    use  = "terraformer"
  }

  vpc_id = "vpc-08859779ddbba6ede"
}
