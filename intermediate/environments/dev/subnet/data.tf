data "terraform_remote_state" "vpc" {
  backend = "local"
  config = {
    path = "../vpc/terraform.tfstate"
  }
}


output "TESTING_OUTPUT" {
  value = data.terraform_remote_state.vpc
}