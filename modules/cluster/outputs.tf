output "cluster_role_arn" {
  description = "ARN da IAM Role usada pelo serviço do EKS (control plane)"
  value       = aws_iam_role.cluster.arn
}

output "cluster_id" {
  description = "Nome/ID do cluster EKS"
  value       = aws_eks_cluster.eks.id
}

output "cluster_endpoint" {
  description = "Endpoint da API do cluster EKS"
  value       = aws_eks_cluster.eks.endpoint
}

output "cluster_certificate_authority_data" {
  description = "Certificado (base64) da autoridade certificadora do cluster EKS"
  value       = aws_eks_cluster.eks.certificate_authority[0].data
}

output "oidc_provider_arn" {
  description = "ARN do IAM OIDC provider do cluster (usado em roles IRSA)"
  value       = aws_iam_openid_connect_provider.eks.arn
}

output "oidc_provider_url" {
  description = "URL do issuer OIDC do cluster EKS"
  value       = aws_eks_cluster.eks.identity[0].oidc[0].issuer
}
