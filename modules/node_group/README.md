# node_group

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.54.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eks_node_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.node_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.node_group_cni_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.node_group_ecr_read_only](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.node_group_worker_node_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.node_group_assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity_type"></a> [capacity\_type](#input\_capacity\_type) | Tipo de capacidade dos nós: ON\_DEMAND ou SPOT | `string` | `"ON_DEMAND"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Nome do cluster EKS, usado para padronizar a nomenclatura dos recursos | `string` | `"eks-study"` | no |
| <a name="input_desired_size"></a> [desired\_size](#input\_desired\_size) | Número desejado de worker nodes | `number` | `2` | no |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | Nome do cluster EKS ao qual o node group será associado | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Ambiente (dev, staging, prod) | `string` | `"dev"` | no |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | Tipos de instância EC2 usados pelos worker nodes | `list(string)` | <pre>[<br/>  "t3.medium"<br/>]</pre> | no |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | Número máximo de worker nodes | `number` | `3` | no |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | Número mínimo de worker nodes | `number` | `1` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | IDs das subnets onde os worker nodes serão provisionados | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_node_group_id"></a> [node\_group\_id](#output\_node\_group\_id) | ID do Managed Node Group |
| <a name="output_node_group_role_arn"></a> [node\_group\_role\_arn](#output\_node\_group\_role\_arn) | ARN da IAM Role usada pelos nós do Managed Node Group |
| <a name="output_node_group_role_name"></a> [node\_group\_role\_name](#output\_node\_group\_role\_name) | Nome da IAM Role usada pelos nós do Managed Node Group |
| <a name="output_node_group_status"></a> [node\_group\_status](#output\_node\_group\_status) | Status atual do Managed Node Group |
<!-- END_TF_DOCS -->
