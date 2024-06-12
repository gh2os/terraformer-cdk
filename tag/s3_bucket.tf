resource "aws_s3_bucket" "tfer--ecs-moodle-stack-cloudtrailbucket4e585f26-5onp6e9ytqcx" {
  bucket        = "ecs-moodle-stack-cloudtrailbucket4e585f26-5onp6e9ytqcx"
  force_destroy = "false"

  grant {
    id          = "13ef84c490622b8227c5f39bc19125c268346492634c6b32d0afaaf10b6f05fc"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ecs-moodle-stack-cloudtrailbucket4e585f26-e3ehpqfxayq8" {
  bucket        = "ecs-moodle-stack-cloudtrailbucket4e585f26-e3ehpqfxayq8"
  force_destroy = "false"

  grant {
    id          = "13ef84c490622b8227c5f39bc19125c268346492634c6b32d0afaaf10b6f05fc"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ecs-moodle-stack-cloudtrailbucket4e585f26-fgxpkayndlup" {
  bucket        = "ecs-moodle-stack-cloudtrailbucket4e585f26-fgxpkayndlup"
  force_destroy = "false"

  grant {
    id          = "13ef84c490622b8227c5f39bc19125c268346492634c6b32d0afaaf10b6f05fc"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ecs-moodle-stack-cloudtrailbucket4e585f26-fz38boyjvxqb" {
  bucket        = "ecs-moodle-stack-cloudtrailbucket4e585f26-fz38boyjvxqb"
  force_destroy = "false"

  grant {
    id          = "13ef84c490622b8227c5f39bc19125c268346492634c6b32d0afaaf10b6f05fc"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ecs-moodle-stack-cloudtrailbucket4e585f26-gwsigcrn9msr" {
  bucket        = "ecs-moodle-stack-cloudtrailbucket4e585f26-gwsigcrn9msr"
  force_destroy = "false"

  grant {
    id          = "13ef84c490622b8227c5f39bc19125c268346492634c6b32d0afaaf10b6f05fc"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ecs-moodle-stack-cloudtrailbucket4e585f26-iubxb1iofhxm" {
  bucket        = "ecs-moodle-stack-cloudtrailbucket4e585f26-iubxb1iofhxm"
  force_destroy = "false"

  grant {
    id          = "13ef84c490622b8227c5f39bc19125c268346492634c6b32d0afaaf10b6f05fc"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      },
      "Effect": "Deny",
      "Principal": {
        "AWS": "*"
      },
      "Resource": [
        "arn:aws:s3:::ecs-moodle-stack-cloudtrailbucket4e585f26-iubxb1iofhxm",
        "arn:aws:s3:::ecs-moodle-stack-cloudtrailbucket4e585f26-iubxb1iofhxm/*"
      ]
    },
    {
      "Action": "s3:GetBucketAcl",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudtrail.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::ecs-moodle-stack-cloudtrailbucket4e585f26-iubxb1iofhxm"
    },
    {
      "Action": "s3:PutObject",
      "Condition": {
        "StringEquals": {
          "s3:x-amz-acl": "bucket-owner-full-control"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudtrail.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::ecs-moodle-stack-cloudtrailbucket4e585f26-iubxb1iofhxm/AWSLogs/760578178066/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ecs-moodle-stack-cloudtrailbucket4e585f26-jejxdrsqegt3" {
  bucket        = "ecs-moodle-stack-cloudtrailbucket4e585f26-jejxdrsqegt3"
  force_destroy = "false"

  grant {
    id          = "13ef84c490622b8227c5f39bc19125c268346492634c6b32d0afaaf10b6f05fc"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ecs-moodle-stack-cloudtrailbucket4e585f26-lt9xcjljlqes" {
  bucket        = "ecs-moodle-stack-cloudtrailbucket4e585f26-lt9xcjljlqes"
  force_destroy = "false"

  grant {
    id          = "13ef84c490622b8227c5f39bc19125c268346492634c6b32d0afaaf10b6f05fc"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ecs-moodle-stack-cloudtrailbucket4e585f26-pkh1otz9o3f4" {
  bucket        = "ecs-moodle-stack-cloudtrailbucket4e585f26-pkh1otz9o3f4"
  force_destroy = "false"

  grant {
    id          = "13ef84c490622b8227c5f39bc19125c268346492634c6b32d0afaaf10b6f05fc"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ecs-moodle-stack-cloudtrailbucket4e585f26-qhkho2njrvmn" {
  bucket        = "ecs-moodle-stack-cloudtrailbucket4e585f26-qhkho2njrvmn"
  force_destroy = "false"

  grant {
    id          = "13ef84c490622b8227c5f39bc19125c268346492634c6b32d0afaaf10b6f05fc"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ecs-moodle-stack-cloudtrailbucket4e585f26-qkk2gbumrfkh" {
  bucket        = "ecs-moodle-stack-cloudtrailbucket4e585f26-qkk2gbumrfkh"
  force_destroy = "false"

  grant {
    id          = "13ef84c490622b8227c5f39bc19125c268346492634c6b32d0afaaf10b6f05fc"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ecs-moodle-stack-cloudtrailbucket4e585f26-r6rd44srnfnf" {
  bucket        = "ecs-moodle-stack-cloudtrailbucket4e585f26-r6rd44srnfnf"
  force_destroy = "false"

  grant {
    id          = "13ef84c490622b8227c5f39bc19125c268346492634c6b32d0afaaf10b6f05fc"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ecs-moodle-stack-cloudtrailbucket4e585f26-sxcb3dhomucu" {
  bucket        = "ecs-moodle-stack-cloudtrailbucket4e585f26-sxcb3dhomucu"
  force_destroy = "false"

  grant {
    id          = "13ef84c490622b8227c5f39bc19125c268346492634c6b32d0afaaf10b6f05fc"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ecs-moodle-stack-cloudtrailbucket4e585f26-uguvywxwtakj" {
  bucket        = "ecs-moodle-stack-cloudtrailbucket4e585f26-uguvywxwtakj"
  force_destroy = "false"

  grant {
    id          = "13ef84c490622b8227c5f39bc19125c268346492634c6b32d0afaaf10b6f05fc"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}
