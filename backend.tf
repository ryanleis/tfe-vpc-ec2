terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "LeisCorp"
    workspaces {
      name = "tfe-vpc-ec2"
    }
  }
}