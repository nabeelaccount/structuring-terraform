provider "aws" {
  region = var.region
}


module "subnet" {
  source = "git@github.com:nabeelaccount/structuring-terraform-aws-subnet.git?ref=0.1.0"

  vpc_id     = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block = var.cidr_block

  env = var.env
}
