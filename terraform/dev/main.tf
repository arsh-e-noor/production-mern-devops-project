module "vpc" {
  source = "../modules/vpc"
}

module "eks" {
  source     = "../modules/eks"
  subnet_ids = module.vpc.subnet_ids
}

module "nodegroup" {
  source       = "../modules/nodegroup"
  cluster_name = module.eks.cluster_name
  subnet_ids   = module.vpc.subnet_ids
}