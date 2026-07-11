# Terraform Study

A personal learning repository for studying **Terraform** and Infrastructure as Code (IaC) concepts.

## Purpose

This repository serves as a base for hands-on Terraform practice. It collects
notes, examples, and small projects built while learning how to provision and
manage infrastructure declaratively.

## Topics Covered

- Terraform core concepts (providers, resources, variables, outputs)
- State management and backends
- Modules and code reuse
- Workspaces and environments
- Provisioners and data sources
- Best practices and project structure

## Getting Started

1. Install [Terraform](https://developer.hashicorp.com/terraform/install).
2. Clone this repository:
   ```bash
   git clone git@github.com:grabeTaka/terraform-study.git
   cd terraform-study
   ```
3. Explore the examples and follow along.

## Common Commands

```bash
terraform init      # Initialize the working directory
terraform plan      # Preview changes
terraform apply     # Apply changes
terraform destroy   # Tear down resources
terraform fmt       # Format configuration files
terraform validate  # Validate configuration
```

## License

This project is for educational purposes.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.17 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~> 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cluster"></a> [cluster](#module\_cluster) | ./modules/cluster | n/a |
| <a name="module_load_balancer"></a> [load\_balancer](#module\_load\_balancer) | ./modules/load-balancer-controller | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./modules/network | n/a |
| <a name="module_node_group"></a> [node\_group](#module\_node\_group) | ./modules/node_group | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Região da AWS onde os recursos serão criados | `string` | `"us-east-1"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Nome do cluster EKS, usado para padronizar a nomenclatura dos recursos | `string` | `"eks-study"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Ambiente (dev, staging, prod) | `string` | `"dev"` | no |
| <a name="input_private_subnet_cidrs"></a> [private\_subnet\_cidrs](#input\_private\_subnet\_cidrs) | Blocos CIDR das subnets privadas (uma por AZ) | `list(string)` | <pre>[<br/>  "10.0.101.0/24",<br/>  "10.0.102.0/24"<br/>]</pre> | no |
| <a name="input_public_subnet_cidrs"></a> [public\_subnet\_cidrs](#input\_public\_subnet\_cidrs) | Blocos CIDR das subnets públicas (uma por AZ) | `list(string)` | <pre>[<br/>  "10.0.1.0/24",<br/>  "10.0.2.0/24"<br/>]</pre> | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | Bloco CIDR da VPC | `string` | `"10.0.0.0/16"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
