resource "aws_instance" "server" {
  # count is a special terraform property to controll the quantity of resoures that will be created
  # can be use on any resource
  count = local.instance_number <= 0 ? 0 : local.instance_number

  ami = var.instance_ami

  # lookup fn will try to find the value for the key in var.instance_type using the var.env
  instance_type = lookup(var.instance_type, var.env)

  tags = merge(local.common_tags, {
    Env = format("%s", var.env)

    Name = format("Instance %d", count.index + 1)
  })
}