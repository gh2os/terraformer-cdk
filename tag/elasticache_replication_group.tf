resource "aws_elasticache_replication_group" "tfer--ecm10h30gupkcnw7" {
  at_rest_encryption_enabled = "true"
  auto_minor_version_upgrade = "true"
  automatic_failover_enabled = "true"
  data_tiering_enabled       = "false"
  description                = "Moodle Redis"
  engine                     = "redis"
  engine_version             = "7.1"
  ip_discovery               = "ipv4"
  maintenance_window         = "wed:06:30-wed:07:30"
  multi_az_enabled           = "true"
  network_type               = "ipv4"
  node_type                  = "cache.t4g.micro"
  num_cache_clusters         = "2"
  num_node_groups            = "1"
  parameter_group_name       = "default.redis7"
  port                       = "6379"
  replicas_per_node_group    = "1"
  replication_group_id       = "ecm10h30gupkcnw7"
  security_group_ids         = ["${data.terraform_remote_state.local.outputs.aws_security_group_tfer--ecs-moodle-stack-moodleredissgEE874356-uAF4mGI3n6r1_sg-04b9ee4e4f6d5e764_id}"]
  snapshot_retention_limit   = "0"
  snapshot_window            = "05:30-06:30"
  subnet_group_name          = "${aws_elasticache_subnet_group.tfer--ecsmoodlestack-redis-subnet-group.name}"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  transit_encryption_enabled = "false"
}
