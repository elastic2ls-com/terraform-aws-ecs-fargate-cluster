#
# Cloudwatch logs
#

resource "aws_cloudwatch_log_group" "fargate_cluster" {
  name              = var.log_group
  retention_in_days = var.log_retention_days
  kms_key_id        = aws_kms_key.fargate.key_id
}


resource "aws_cloudwatch_log_group" "fargate_execute_command_logs" {
  count = var.enable_execute_command ? 1 : 0

  name              = "${var.log_group}-execute-commands"
  retention_in_days = var.log_retention_days
  kms_key_id        = aws_kms_key.fargate.key_id
}

resource "aws_kms_key" "fargate" {
  description             = "cloudwatch-encrpytion"
  enable_key_rotation     = true
}