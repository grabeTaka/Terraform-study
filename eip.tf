resource "aws_eip" "nat" {
  count = length(aws_subnet.public)

  domain = "vpc"

  tags = merge(local.tags, {
    Name = "${var.cluster_name}-${var.environment}-nat-eip-${data.aws_availability_zones.available.names[count.index]}"
  })
}
