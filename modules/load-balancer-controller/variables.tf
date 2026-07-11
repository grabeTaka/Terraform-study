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

variable "subnet_ids" {
  description = "IDs das subnets usadas pelos load balancers criados pelo controller"
  type        = list(string)
}
