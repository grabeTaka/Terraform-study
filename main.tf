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
