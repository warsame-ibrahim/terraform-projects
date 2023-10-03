provider "aws" {
  region = "us-east-1"
  profile = "warsame"
}

terraform {
  backend "s3" {
    bucket = "warsame-terraform-remote-state"
    key    = "terraform.tfstate.warsame"
    region = "us-east-1"
    profile = "warsame"
  }
}

