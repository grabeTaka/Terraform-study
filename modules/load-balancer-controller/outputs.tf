output "policy_arn" {
  description = "ARN da IAM policy do AWS Load Balancer Controller"
  value       = aws_iam_policy.load_balancer_controller.arn
}

output "policy_name" {
  description = "Nome da IAM policy do AWS Load Balancer Controller"
  value       = aws_iam_policy.load_balancer_controller.name
}
