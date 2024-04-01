output "bucket_region" {
  description = "Specify the region in which an S3 bucket will be created by the module."
  value       = module.backend.region
}

output "state_bucket_name" {
  description = "Name of the S3 bucket that will be used to store the Terraform state file."
  value       = module.backend.state_bucket_name
}

output "dynamodb_table_name" {
  description = "Name of the DynamoDB table that will be used to manage locking and unlocking of the Terraform state file."
  value       = module.backend.dynamodb_table_name
}

output "log_bucket_name" {
  description = "Name of the S3 bucket that will be used to store logs for this module."
  value       = module.backend.log_bucket_name
}
