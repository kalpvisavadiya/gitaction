output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = aws_ecr_repository.app.repository_url
}

output "rds_endpoint" {
  description = "RDS endpoint"
  value       = aws_db_instance.mysql.address
}

output "ecs_cluster_name" {
  description = "ECS cluster name"
  value       = aws_ecs_cluster.main.name
}

output "load_balancer_url" {
  description = "Application Load Balancer URL"
  value       = "http://${aws_lb.app.dns_name}"
}

output "ecs_service_name" {
  description = "ECS service name"
  value       = var.image_uri == "" ? null : aws_ecs_service.app[0].name
}