# output "butcket_name" {
#   value = module.bucket.name
# }

# output "butcket_arn" {
#   value = module.bucket.arn
# }

output "bucket_website_name" {
  value = module.website.name
}

output "bucket_website_url" {
  value = module.website.website
}

output "bucket_website_arn" {
  value = module.website.arn
}