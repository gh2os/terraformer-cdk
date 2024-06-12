resource "aws_sns_topic" "tfer--ecs-moodle-stack-rdseventsubscriptiontopicFF8A7653-1ADxG6BDSMW7" {
  application_success_feedback_sample_rate = "0"
  content_based_deduplication              = "false"
  fifo_topic                               = "false"
  firehose_success_feedback_sample_rate    = "0"
  http_success_feedback_sample_rate        = "0"
  lambda_success_feedback_sample_rate      = "0"
  name                                     = "ecs-moodle-stack-rdseventsubscriptiontopicFF8A7653-1ADxG6BDSMW7"

  policy = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish"
      ],
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "760578178066"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:sns:us-east-1:760578178066:ecs-moodle-stack-rdseventsubscriptiontopicFF8A7653-1ADxG6BDSMW7",
      "Sid": "__default_statement_ID"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  signature_version                = "0"
  sqs_success_feedback_sample_rate = "0"

  tags = {
    use = "terraformer"
  }

  tags_all = {
    use = "terraformer"
  }
}
