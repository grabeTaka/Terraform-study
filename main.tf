module "network" {
  source = "./modules/network"

  cluster_name         = var.cluster_name
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "cluster" {
  source = "./modules/cluster"

  cluster_name = var.cluster_name
  environment  = var.environment
  vpc_id       = module.network.vpc_id
  subnet_ids   = module.network.public_subnet_ids
}

module "node_group" {
  source = "./modules/node_group"

  cluster_name     = var.cluster_name
  environment      = var.environment
  eks_cluster_name = module.cluster.cluster_id
  subnet_ids       = module.network.private_subnet_ids

  instance_types = ["t3.small"]
  desired_size   = 1
  min_size       = 1
  max_size       = 1
}

module "load_balancer" {
  source = "./modules/load-balancer-controller"

  cluster_name      = var.cluster_name
  environment       = var.environment
  vpc_id            = module.network.vpc_id
  subnet_ids        = module.network.public_subnet_ids
  oidc_provider_arn = module.cluster.oidc_provider_arn
  oidc_provider_url = module.cluster.oidc_provider_url
  eks_cluster_name  = module.cluster.cluster_id
  region            = var.aws_region
}
