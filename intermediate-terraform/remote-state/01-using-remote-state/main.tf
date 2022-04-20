terraform {
  required_version = "1.1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
  }

  # configuration of the tfstate store
  # "$ terraform init >> terraform apply" 
  # OR "$ terraform state push terraform.tfstate.backup" to execute

  # cannot use var because is initial config of terrafoerm
  # because executes first (on terraform init)... 
  # is the core of terraform

  # eg:
  backend "s3" {
    bucket  = "tfstate-411545821635"
    key     = "dev/terraform-state-01/terraform.tfstate"
    region  = "us-east-1"
    profile = "neto-terraform-1"
  }

  # we can left the backend empty so the terminal will ask for all the configs. eg:
  # backend "s3" {} 

  # another way is using the terminal. eg:
  # terrform init -backend=true \
  #   -backend-config="bucket=tfstate-411545821635" \
  #   -backend-config="key=dev/terraform-state-01/terraform.tfstate" \
  #   -backend-config="region=us-east-1" \
  #   -backend-config="profile=neto-terraform-1" \

  # or using an .hcl file:
  # terraform init -backend=true -backend-config="backend.hcl"
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}