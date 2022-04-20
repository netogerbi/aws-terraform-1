variable "environment" {
  type        = string
  description = ""
  default     = "dev"
}

variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "neto-terraform-1"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-0ed9277fb7eb570c9"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}