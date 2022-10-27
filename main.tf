terraform {
  required_version = ">=0.13.1"
  required_providers {
    aws   = ">=4.36.1"
    local = ">=2.2.3"
  }
  backend "s3" {
    bucket = "bucket-ro-terraform"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "vpc-estudos" {
  source         = "./modules/vpc"
  prefix         = var.prefix
  vpc_cidr_block = var.vpc_cidr_block
}

module "eks" {
  source         = "./modules/eks"
  prefix         = var.prefix
  vpc_id         = module.vpc-estudos.vpc_id
  cluster_name   = var.cluster_name
  retention_days = var.retention_days
  subnet_ids     = module.vpc-estudos.subnet_ids
  desired_size   = var.desired_size
  max_size       = var.max_size
  min_size       = var.min_size
}
