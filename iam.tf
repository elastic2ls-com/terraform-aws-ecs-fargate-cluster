#
# Fargate execution role
#

resource "aws_iam_role" "ecs_task_execution_role" {
  name = "ecs_task_execution_role_${var.cluster_name}"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Service": "ecs-tasks.amazonaws.com"
            },
            "Action": "sts:AssumeRole",
            "Sid": ""
        }
    ]
}
EOF
}

resource "aws_iam_role_policy" "ecs_task_execution_role_policy" {
  name = "ecs_task_execution_role_policy_${var.cluster_name}"
  role = aws_iam_role.ecs_task_execution_role.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "ecs_task_execution_custom_role_policy" {
  count  = var.execution_role_policy == "" ? 0 : 1
  name   = "ecs_task_execution_custom_role_policy_${var.cluster_name}"
  role   = aws_iam_role.ecs_task_execution_role.id
  policy = var.execution_role_policy
}
