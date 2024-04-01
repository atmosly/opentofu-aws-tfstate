output "state_bucket_name" {
  description = "Specify the region in which an S3 bucket will be created by the module."
  value       = module.s3_bucket.s3_bucket_id
}

output "dynamodb_table_name" {
  description = "Name of the DynamoDB table that will be used to manage locking and unlocking of the terraform state file."
  value       = aws_dynamodb_table.dynamodb_table.id
}

output "log_bucket_name" {
  description = "Name of the S3 bucket that will be used to store logs."
  value       = var.logging ? module.log_bucket[0].s3_bucket_id : null
}

output "region" {
  description = "Name of the region in which Cloudtrail is created"
  value       = var.logging ? aws_cloudtrail.s3_cloudtrail[0].home_region : null
}
