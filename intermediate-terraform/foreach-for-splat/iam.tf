resource "aws_iam_user" "the_accounts" {
  for_each = toset(["Neto", "Tatiara"])

  name = each.key #each.key or each.value are the same for toset
}