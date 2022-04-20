terraform {
  required_version = "1.1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
  }

  backend "s3" {
    bucket  = "tfstate-411545821635"
    key     = "dev/terraform-data-source/terraform.tfstate"
    region  = "us-east-1"
    profile = "neto-terraform-1"
  }
}

provider "aws" {
  region = var.aws_region
  profile = var.aws_profile
}