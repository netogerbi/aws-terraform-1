instance_type = "t3.micro"

environment = "prod"

instance_tags = {
  Name    = "Ubuntu"
  Project = "Terraform Lab Production"
}

# terraform plan -var-file="prod.tfvars" (-auto-approved)