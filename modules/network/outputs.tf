output "vpc_id" {
  description = "ID da VPC"
  value       = aws_vpc.eks.id
}

output "public_subnet_ids" {
  description = "IDs das subnets públicas (uma por AZ)"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs das subnets privadas (uma por AZ)"
  value       = aws_subnet.private[*].id
}

output "nat_gateway_ids" {
  description = "IDs dos NAT Gateways (um por AZ)"
  value       = aws_nat_gateway.eks[*].id
}
