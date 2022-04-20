variable "env" {}

variable "aws_profile" {
  type = string

  description = "Aws Profile"

  default = "neto-terraform-1"
}

variable "aws_region" {
  type = string

  description = ""

  default = "us-east-1"
}

variable "instance_ami" {
  type = string

  description = "Amazon Machine Image (AMI)"

  # commented to test the validation
  # default = "ami-033b95fb8079dc481"

  validation {
    condition     = length(var.instance_ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"
    error_message = "The instance_ami must be a valid AMI id and, starting with \"ami-\"." #needs the "." at the end
  }
}

variable "instance_number" {
  type = object({
    dev  = number
    prod = number
  })

  description = "Number of instances to create by env"

  default = {
    dev  = 1
    prod = 3
  }
}

variable "instance_type" {
type = object({
    dev  = string
    prod = string
  })
  
  description = "Instance type of ec2 on aws"

  default = {
    dev  = "t2.micro"
    prod = "t3.micro"
  }
}
