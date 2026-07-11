variable "cluster_name" {
  description = "Nome do cluster EKS, usado para padronizar a nomenclatura dos recursos"
  type        = string
  default     = "eks-study"
}

variable "environment" {
  description = "Ambiente (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "vpc_id" {
  description = "ID da VPC onde o Load Balancer Controller irá atuar"
  type        = string
}

variable "eks_cluster_name" {
  description = "Nome do cluster EKS onde o controller será instalado"
  type        = string
}

variable "region" {
  description = "Região da AWS onde o cluster está provisionado"
  type        = string
  default     = "us-east-1"
}

variable "subnet_ids" {
  description = "IDs das subnets usadas pelos load balancers criados pelo controller"
  type        = list(string)
}

variable "oidc_provider_arn" {
  description = "ARN do IAM OIDC provider do cluster EKS (usado na trust policy da role IRSA)"
  type        = string
}

variable "oidc_provider_url" {
  description = "URL do issuer OIDC do cluster EKS"
  type        = string
}

variable "service_account_namespace" {
  description = "Namespace da service account usada pelo controller"
  type        = string
  default     = "kube-system"
}

variable "service_account_name" {
  description = "Nome da service account usada pelo controller"
  type        = string
  default     = "aws-load-balancer-controller"
}
