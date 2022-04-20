variable "environment" {
  type        = string
  description = ""
}

variable "aws_region" {
  type        = string
  description = ""
  # default = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  # default = "neto-terraform-1"
}

# the ami can be obtained on aws (Amazon Machine Image (AMI))
# if is linux or windows, the kernel version, etc...
variable "instance_ami" {
  type        = string
  description = ""
  # default = "ami-0ed9277fb7eb570c9"
}

variable "instance_type" {
  type        = string
  description = ""
  # default = "t2.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Env     = "Dev"
    Name    = "Ubuntu"
    Project = "Terraform Lab"
  }
}