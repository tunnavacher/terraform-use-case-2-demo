# AWS S3 Bucket with versioning, encryption,  event notifications and life cycle rule
module "s3_bucket" {
  source = "git::https://github.com/tunnavacher/terraform-aws-s3.git"
  bucketname = var.bucketname
  acl = var.acl
  env = var.env
  versioning_enabled = var.versioning_enabled
  kms_master_key_id = var.kms_master_key_id
  sse_algorithm = var.sse_algorithm
  #key = var.key
}
 
# Lambda function to start the crawler after S3 PUT Events
module "lambda_function" {
  source = "git::https://github.com/tunnavacher/terraform-aws-lambda-prod.git"
  function_name1 = var.function_name1
  lambda_handler = var.lambda_handler
  runtime = var.runtime
  lambda_execution_role = var.lambda_execution_role
  lambda_layer_name = var.lambda_layer_name
  layer_runtime = var.layer_runtime
  s3_bucket = var.s3_bucket
  s3_key = var.s3_key
  event_bucket_name =  module.s3_bucket.bucket_id
  event_type = var.event_type
  prefix = var.prefix
  suffix = var.suffix
  statement_id1 = var.statement_id1
  action1 = var.action1
  principle1 = var.principle1
  source_arn = module.s3_bucket.bucket_id

 # Lambda function to start the Glue Job once the Crawler run successfully
  
  function_name2 = var.function_name2
  s3_key1 = var.s3_key1
  cwrulename= var.cwrulename
  target_id = var.target_id
  statement_id2 = var.statement_id2
  action2 = var.action2
  principle2 = var.principle2
}
