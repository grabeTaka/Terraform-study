resource "aws_vpc" "eks" {
  cidr_block           = var.vpc_cidr
  enable_dns_support    = true
  enable_dns_hostnames = true

  tags = {
    Name                                        = "${var.cluster_name}-${var.environment}-vpc"
    Environment                                 = var.environment
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}
