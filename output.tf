output "cluster_arn" {
  value = aws_ecs_cluster.fargate_cluster.id
}

output "cluster_name" {
  value = aws_ecs_cluster.fargate_cluster.name
}

output "execution_role_arn" {
  value = aws_iam_role.ecs_task_execution_role.arn
}
