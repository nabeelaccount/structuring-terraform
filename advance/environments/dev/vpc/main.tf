provider "aws" {
  region = var.region
}

module "vpc" {
  source = "git@github.com:nabeelaccount/structuring-terraform-aws-vpc.git?ref=0.1.0"

  env           = var.env
  cidr_block    = var.cidr_block
}