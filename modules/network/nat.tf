resource "aws_nat_gateway" "eks" {
  count = length(aws_subnet.public)

  allocation_id = aws_eip.nat[count.index].id
  subnet_id     = aws_subnet.public[count.index].id

  tags = merge(local.tags, {
    Name = "${var.cluster_name}-${var.environment}-nat-${data.aws_availability_zones.available.names[count.index]}"
  })

  depends_on = [aws_internet_gateway.eks]
}
