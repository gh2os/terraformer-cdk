resource "aws_elasticache_cluster" "tfer--ecm10h30gupkcnw7-001" {
  auto_minor_version_upgrade = "true"
  availability_zone          = "us-east-1a"
  cluster_id                 = "ecm10h30gupkcnw7-001"
  ip_discovery               = "ipv4"
  network_type               = "ipv4"
  replication_group_id       = "${aws_elasticache_replication_group.tfer--ecm10h30gupkcnw7.replication_group_id}"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  transit_encryption_enabled = "false"
}

resource "aws_elasticache_cluster" "tfer--ecm10h30gupkcnw7-002" {
  auto_minor_version_upgrade = "true"
  availability_zone          = "us-east-1b"
  cluster_id                 = "ecm10h30gupkcnw7-002"
  ip_discovery               = "ipv4"
  network_type               = "ipv4"
  replication_group_id       = "${aws_elasticache_replication_group.tfer--ecm10h30gupkcnw7.replication_group_id}"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  transit_encryption_enabled = "false"
}
