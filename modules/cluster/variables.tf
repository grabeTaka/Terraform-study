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

variable "kubernetes_version" {
  description = "Versão do Kubernetes do cluster EKS"
  type        = string
  default     = "1.30"
}

variable "subnet_ids" {
  description = "IDs das subnets onde o control plane do EKS será provisionado"
  type        = list(string)
}

variable "vpc_id" {
  description = "ID da VPC onde o security group do cluster será criado"
  type        = string
}

variable "https_ingress_cidr" {
  description = "Bloco CIDR autorizado a acessar o endpoint HTTPS (443) do EKS"
  type        = string
  default     = "0.0.0.0/0"
}
