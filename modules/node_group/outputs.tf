output "node_group_role_arn" {
  description = "ARN da IAM Role usada pelos nós do Managed Node Group"
  value       = aws_iam_role.node_group.arn
}

output "node_group_role_name" {
  description = "Nome da IAM Role usada pelos nós do Managed Node Group"
  value       = aws_iam_role.node_group.name
}

output "node_group_id" {
  description = "ID do Managed Node Group"
  value       = aws_eks_node_group.this.id
}

output "node_group_status" {
  description = "Status atual do Managed Node Group"
  value       = aws_eks_node_group.this.status
}
