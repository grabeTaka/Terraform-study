resource "aws_security_group" "cluster" {
  name        = "${var.cluster_name}-${var.environment}-cluster-sg"
  description = "Security group do control plane do EKS"
  vpc_id      = var.vpc_id

  tags = merge(local.tags, {
    Name = "${var.cluster_name}-${var.environment}-cluster-sg"
  })
}

resource "aws_vpc_security_group_ingress_rule" "cluster_https" {
  security_group_id = aws_security_group.cluster.id
  description       = "Permite HTTPS (443) em direcao ao endpoint da API do EKS"

  ip_protocol = "tcp"
  from_port   = 443
  to_port     = 443
  cidr_ipv4   = var.https_ingress_cidr
}

resource "aws_vpc_security_group_egress_rule" "cluster_all" {
  security_group_id = aws_security_group.cluster.id
  description       = "Permite todo o trafego de saida"

  ip_protocol = "-1"
  cidr_ipv4   = "0.0.0.0/0"
}
