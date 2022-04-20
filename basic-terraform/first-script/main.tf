terraform {
  required_version = "1.1.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.71.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "neto-terraform-1"
}

resource "aws_s3_bucket" "test-bucket" {
  bucket = "netogerbi-test-bucket-terraform-1"
  acl    = "private"

  tags = {
    Name        = "Test bucket 1"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}