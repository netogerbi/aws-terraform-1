variable "aws_profile" {
  type = string

  description = "Aws Profile"

  default = "neto-terraform-1"
}

variable "instance_type" {
  type = string

  description = "EC2 Instance Type"

  default = "t3.micro"
}

variable "aws_region" {
  type        = string

  description = ""

  default     = "us-east-1"
}
