resource "aws_internet_gateway" "eks" {
  vpc_id = aws_vpc.eks.id

  tags = merge(local.tags, {
    Name = "${var.cluster_name}-${var.environment}-igw"
  })
}
