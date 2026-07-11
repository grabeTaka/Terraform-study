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

variable "eks_cluster_name" {
  description = "Nome do cluster EKS ao qual o node group será associado"
  type        = string
}

variable "subnet_ids" {
  description = "IDs das subnets onde os worker nodes serão provisionados"
  type        = list(string)
}

variable "instance_types" {
  description = "Tipos de instância EC2 usados pelos worker nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "capacity_type" {
  description = "Tipo de capacidade dos nós: ON_DEMAND ou SPOT"
  type        = string
  default     = "ON_DEMAND"
}

variable "desired_size" {
  description = "Número desejado de worker nodes"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Número mínimo de worker nodes"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Número máximo de worker nodes"
  type        = number
  default     = 3
}
