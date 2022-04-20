# this will get the ami on the amazon automatically
# to be used on other configurations for the infra
data "aws_ami" "so" {
  owners = [ "amazon" ]
  most_recent = true
  name_regex = "Linux"
}