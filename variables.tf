variable "region_name" {
  type = string
  default = "us-east-1"
}

variable "bucketname" {
  type = string
  default = "demobucketdev13"
}

variable "acl" {
  type = string
  default = "private"
}

variable "env" {
  type = string
  default = "dev"
}

variable "versioning_enabled" {
  type = bool
  default = true
}

variable "kms_master_key_id" {
  type = string
  default = "aws/s3"
}

variable "sse_algorithm" {
 type = string
  default = "aws:kms"
}

variable "key" {
    type        = string
    description = "lambda function"
  default     = "lambda_function.zip"
}

variable "function_name1" {
  type = string
  default = "Crawlerlambdatest1"
}
variable "lambda_handler" {
  type = string
  default = "lambda_function.lambda_handler"
}
variable "runtime" {
  type = string
  default = "python3.8"
}
variable "lambda_execution_role" {
  type = string
  default = "arn:aws:iam::732107147698:role/GlueLambdaExecutionRole"
}

#variable "filename" {
 # type = string
#  default = ""
#}

#variable "prefix" {
#  type = string
 # default = ""
#}

#variable "suffix" {
#type = string
#  default = ""
#}

variable "statement_id1" {
  type = string
  default = "AllowS3Invoke"
}
variable "action1" {
  type = string
  default = "lambda:InvokeFunction"
}
variable "principle1" {
  type = string
  default = "s3.amazonaws.com"
}

variable "layer_runtime" {
  type = string
  default = "python3.8"
}

#variable "s3_key_1" {
  #type = string
 # default = "lambda_function.zip"
#}

variable "lambda_layer_name" {
  type = string
  default = "layer_dev_1"
}

variable "s3_bucket" {
 type = string
  default = "landlingbucketlakeformation"
}

variable "s3_key" {
 type = string
  default = "lambda_function.zip"
}

variable "event_type" {
  type = string
  default = "s3:ObjectCreated:*"
}

variable "prefix" {
  type = string
  default = "AWSLogs/"
}

variable "suffix" {
  type = string
  default = ".csv"
}

#variable "server_side_encryption" {
#   type        = string
  #  description = "encryption on object"
  #default     = "AES256"
#}

#Variable details for the second lambda

variable "function_name2" {
  type = string
  default = "GlueJOblambdatest1"
}

variable "s3_key1" {
  type = string
  default = "lambda_function1.zip"
}

variable "cwrulename" {
 type = string
  default = "lambda_trigger_every-fifteen-minutes"
}

#variable "Schedule" {
 #type = string
 # default = "rate(15 minutes)"
#}

variable "target_id" {
 type = string
  default = "GlueJOblambdatest1"
}

variable "statement_id2" {
 type = string
  default = "AllowExecutionFromCloudWatch"
}

variable "action2" {
 type = string
  default = "lambda:InvokeFunction"
}

variable "principle2" {
 type = string
  default = "events.amazonaws.com"
}
