resource "aws_iam_policy" "load_balancer_controller" {
  name        = "${var.cluster_name}-${var.environment}-aws-load-balancer-controller"
  description = "Permissões usadas pelo AWS Load Balancer Controller"
  policy      = file("${path.module}/iam_policy.json")

  tags = merge(local.tags, {
    Name = "${var.cluster_name}-${var.environment}-aws-load-balancer-controller"
  })
}

data "aws_iam_policy_document" "controller_assume_role" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRoleWithWebIdentity"]

    principals {
      type        = "Federated"
      identifiers = [var.oidc_provider_arn]
    }

    condition {
      test     = "StringEquals"
      variable = "${local.oidc_provider}:sub"
      values   = ["system:serviceaccount:${var.service_account_namespace}:${var.service_account_name}"]
    }

    condition {
      test     = "StringEquals"
      variable = "${local.oidc_provider}:aud"
      values   = ["sts.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "load_balancer_controller" {
  name               = "${var.cluster_name}-${var.environment}-aws-load-balancer-controller-role"
  assume_role_policy = data.aws_iam_policy_document.controller_assume_role.json

  tags = merge(local.tags, {
    Name = "${var.cluster_name}-${var.environment}-aws-load-balancer-controller-role"
  })
}

resource "aws_iam_role_policy_attachment" "load_balancer_controller" {
  policy_arn = aws_iam_policy.load_balancer_controller.arn
  role       = aws_iam_role.load_balancer_controller.name
}
