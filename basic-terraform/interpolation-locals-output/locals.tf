locals {
  ip_filepath = "ips.json"

  common_tags = {
    Service     = "Terraform Lab"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Neto Gerbi"
  }
}