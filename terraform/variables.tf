variable "aws_vpc_id" {
  type          = string
  description   = "AWS VPC ID deployed from network repo"
  default       = "vpc-07750e38e62158965" # CHANGE TO YOUR OWN VPC ID
}

variable "aws_public_subnet_ids" {
  description = "public subnet ids"
  default     = ["subnet-06981158c7d992b55", "subnet-0d903d3fd124c3731"] # CHANGE TO YOUR SUBNET IDS
}

variable "aws_private_subnet_ids" {
  description = "private subnet ids"
  default     = ["subnet-05e1ee3ab311d709f", "subnet-0de0f7b9713666ce7"] # CHANGE TO YOUR SUBNET IDS
}

variable "aws_region" {}

variable "app_name" {
  type        = string
  description = "Application Name"
  default = "Vendor-Twitter"
}

variable "ecs_twitter_env_secrets_key" {
  description = "Secrets key file"
  default = "ecs_env_vars.json"
}

variable "ecs_twitter_env_secrets_folder" {
  description = "Secrets S3 folder"
  default = "mt-vendor-twitter-secrets"
}

variable "dynamodb_vendor_table_name" {
  description = "Table name for dynamodb vendors"
  default = "vendors"
}

variable "sqs_queue_name" {
  description = "Name for SQS queue"
  default = "vendor-twitter-queue"
}

variable "image_tag" {}