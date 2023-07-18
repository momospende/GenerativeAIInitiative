provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

module "vpc" {
  source = "./modules/networking"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

module "ec2" {
  source         = "./modules/compute"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  subnet_id      = tolist(module.vpc.public_subnet_ids)[0]
  name_prefix    = "genai"
  instance_count = {
    instance_1 = "1"
    instance_2 = "1"
  }
}
