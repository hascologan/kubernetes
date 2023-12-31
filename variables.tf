########################################################################
## variables ##
variable "region" {
  description = "AWS region. Required: explicit or sourced here or from the AWS_DEFAULT_REGION environment variable."
  type        = string
  default     = "us-west-2"
}

variable "profile" {
  description = "This is the AWS profile name as set in the shared credentials file."
  type        = string
}

variable "ec2_servers" {
  description = "A configurable map of EC2 settings."
  type        = map(any)
}