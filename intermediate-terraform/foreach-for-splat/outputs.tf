output "extensions" {
  value = local.file_extensions
}

output "extensions_upper" {
  value = local.file_extensions_upper
}

output "instances_arns" {
  value = [for k, v in aws_instance.this : v.arn]
}

# needs to be used the k, v
# eg: k === web|ci_cd / v === tags
# v => v.tags.Name === { v: v.tags.Name }
output "instance_names" {
  value = { for k, v in aws_instance.this : k => v.tags.Name }
}

#splat == for
output "private_ips" {
  value = local.ips[*].private
}
output "public_ips" {
  value = local.ips[*].public
}