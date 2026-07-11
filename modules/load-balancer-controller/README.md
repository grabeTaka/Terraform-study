# load-balancer-controller

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.17 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.100.0 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.17.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.load_balancer_controller](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.load_balancer_controller](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.load_balancer_controller](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [helm_release.load_balancer_controller](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [aws_iam_policy_document.controller_assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Nome do cluster EKS, usado para padronizar a nomenclatura dos recursos | `string` | `"eks-study"` | no |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | Nome do cluster EKS onde o controller será instalado | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Ambiente (dev, staging, prod) | `string` | `"dev"` | no |
| <a name="input_oidc_provider_arn"></a> [oidc\_provider\_arn](#input\_oidc\_provider\_arn) | ARN do IAM OIDC provider do cluster EKS (usado na trust policy da role IRSA) | `string` | n/a | yes |
| <a name="input_oidc_provider_url"></a> [oidc\_provider\_url](#input\_oidc\_provider\_url) | URL do issuer OIDC do cluster EKS | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Região da AWS onde o cluster está provisionado | `string` | `"us-east-1"` | no |
| <a name="input_service_account_name"></a> [service\_account\_name](#input\_service\_account\_name) | Nome da service account usada pelo controller | `string` | `"aws-load-balancer-controller"` | no |
| <a name="input_service_account_namespace"></a> [service\_account\_namespace](#input\_service\_account\_namespace) | Namespace da service account usada pelo controller | `string` | `"kube-system"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | IDs das subnets usadas pelos load balancers criados pelo controller | `list(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID da VPC onde o Load Balancer Controller irá atuar | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_policy_arn"></a> [policy\_arn](#output\_policy\_arn) | ARN da IAM policy do AWS Load Balancer Controller |
| <a name="output_policy_name"></a> [policy\_name](#output\_policy\_name) | Nome da IAM policy do AWS Load Balancer Controller |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | ARN da IAM Role (IRSA) do AWS Load Balancer Controller |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Nome da IAM Role (IRSA) do AWS Load Balancer Controller |
<!-- END_TF_DOCS -->
