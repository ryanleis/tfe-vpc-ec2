#Backend and state file managed in Terraform Cloud
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "LeisCorp"
    workspaces {
      name = "tfe-vpc-ec2"
    }
  }
}