data "terraform_remote_state" "server" {
  backend = "s3"

  # details copied from the ec2 folder on the remote state config
  # used to get the info from the other infra (ec2 folder)
  # stored on the tfstate backend s3 on AWS
  config = {
    bucket  = "tfstate-411545821635"
    key     = "dev/terraform-data-source/terraform.tfstate"
    region  = var.aws_region
    profile = "neto-terraform-1"
  }
}