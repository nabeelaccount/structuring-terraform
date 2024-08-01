provider "aws" {
  region = var.region
}

module "vpc" {
  source = "../../../modules/vpc-v2"

  env           = var.env
  cidr_block    = var.cidr_block
}