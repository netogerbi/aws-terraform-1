output "instance_public_ips" {
  # hte * access all the items on the array (created on the count of ec2 in this case)
  value = aws_instance.server.*.public_ip
}

output "instance_names" {
  value = join(", ", aws_instance.server.*.tags.Name)  # the Name tag of ec2 in this case
}