data "aws_ami" "so" {
  owners      = ["amazon"]
  most_recent = true
  name_regex  = "linux"

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}