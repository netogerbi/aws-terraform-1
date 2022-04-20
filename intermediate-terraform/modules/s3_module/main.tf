resource "aws_s3_bucket" "this" {
  bucket = var.name
  acl    = var.acl
  policy = var.policy
  tags   = var.tags

  dynamic "website" {
    for_each = length(keys(var.website)) == 0 ? [] : [var.website]

    # website.value is possible because the for_each becames the value of the dynamic block
    content {
      index_document           = lookup(website.value, "index_document", null)
      error_document           = lookup(website.value, "error_document", null)
      redirect_all_requests_to = lookup(website.value, "redirect_all_requests_to", null)
      routing_rules            = lookup(website.value, "routing_rules", null)
    }
  }

  dynamic "versioning" {
    for_each = length(keys(var.versioning)) == 0 ? [] : [var.versioning]

    content {
      enabled           = lookup(versioning.value, "enabled", null)
      mfa_delete           = lookup(versioning.value, "mfa_delete", null)
    }
  }

  # this will force the s3 to upload the website static files
  # there is another way to do it dinamically with dynamic blocks
  # website {
  #   error_document = "index.html"
  #   index_document = "index.html"
  # }
}

module "object" {
  source = "./s3_object"

  for_each = var.files != "" ? fileset(var.files, "**") : []

  bucket = aws_s3_bucket.this.bucket

  key = "${var.key_prefix}/${each.value}"

  src = "${var.files}/${each.value}"
}
