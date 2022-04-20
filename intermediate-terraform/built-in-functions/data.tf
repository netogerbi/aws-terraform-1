data "template_file" "json" {
  # this will get the file and pass vars below dinamically to the template
  # good with complex strings and temaplates
  # eg: aws tasks for ecs
  template = file("template.json.tpl")

  vars = {
    age = 38
    eye = "Brown"
    name = local.common_tags.Owner
    gender = "Male"
  }
}

# the config below converts a file to "type"
# saves on the output_path
# from the "source" and rendered
# very used to create artefacts on labdas on aws
data "archive_file" "json" {
  type = local.file_ext

  output_path = "${path.module}/files/${local.object_name}.${local.file_ext}"

  source {
    content = data.template_file.json.rendered
    filename = "${local.object_name}.json"
  }
}