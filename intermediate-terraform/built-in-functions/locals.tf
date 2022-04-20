locals {
  instance_number = lookup(var.instance_number, var.env)

  file_ext = "zip"

  object_name = "my-generated-template"

  common_tags = {
    Owner = "Neto Gerbi"

    Year = "2022"
  }
}