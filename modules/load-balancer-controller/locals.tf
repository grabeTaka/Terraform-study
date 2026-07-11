locals {
  oidc_provider = replace(var.oidc_provider_url, "https://", "")

  tags = {
    Environment                                 = var.environment
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}
