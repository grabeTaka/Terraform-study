resource "aws_iam_policy" "load_balancer_controller" {
  name        = "${var.cluster_name}-${var.environment}-aws-load-balancer-controller"
  description = "Permissões usadas pelo AWS Load Balancer Controller"
  policy      = file("${path.module}/iam_policy.json")

  tags = merge(local.tags, {
    Name = "${var.cluster_name}-${var.environment}-aws-load-balancer-controller"
  })
}
