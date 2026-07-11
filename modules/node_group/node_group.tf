resource "aws_eks_node_group" "this" {
  cluster_name    = var.eks_cluster_name
  node_group_name = "${var.cluster_name}-${var.environment}-mng"
  node_role_arn   = aws_iam_role.node_group.arn
  subnet_ids      = var.subnet_ids

  instance_types = var.instance_types
  capacity_type  = var.capacity_type

  scaling_config {
    desired_size = var.desired_size
    min_size     = var.min_size
    max_size     = var.max_size
  }

  update_config {
    max_unavailable = 1
  }

  tags = merge(local.tags, {
    Name = "${var.cluster_name}-${var.environment}-mng"
  })

  depends_on = [
    aws_iam_role_policy_attachment.node_group_worker_node_policy,
    aws_iam_role_policy_attachment.node_group_cni_policy,
    aws_iam_role_policy_attachment.node_group_ecr_read_only,
  ]
}
