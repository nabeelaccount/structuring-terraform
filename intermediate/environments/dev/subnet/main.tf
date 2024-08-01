provider "aws" {
  region = var.region
}


module "subnet" {
  source = "../../../modules/subnet"

  vpc_id     = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block = var.cidr_block

  env = var.env
}
